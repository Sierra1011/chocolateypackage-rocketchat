$Package = "rocketchat"
# define latest version logic
$Headers = @{'Accept'='application/vnd.github.v3+json'}
$Response = ( Invoke-WebRequest "https://api.github.com/repos/RocketChat/Rocket.Chat.Electron/releases/latest" -Method GET -Headers $Headers) | ConvertFrom-Json
$Version = $Response.tag_name
Write-Output "Building package version $Version."

$TEMPDIR = ".\versions\template\"
$WORKDIR = ".\versions\$VERSION\"

If ( !( Test-Path "$WORKDIR\*.nuspec"  ) ) {
    # Get the Hash from the download
    $File = "C:\Temp\rocketchat-setup-$VERSION.exe"
    $FileURL = "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/$($VERSION)/rocketchat-setup-$($VERSION).exe"
    ( New-Object System.Net.WebClient ).DownloadFile($FileURL,$File)
    $Hash = ( Get-FileHash $File -Algorithm SHA256 ).Hash
    Remove-Item $File
    # Make version folder
    New-Item -Path $WORKDIR -ItemType Directory
    New-Item -Path "$WORKDIR\tools" -ItemType Directory
    # Get nuspec template content, write to new file
    $Content = Get-ChildItem -Path "$TEMPDIR\rocketchat.nuspec" | Get-Content -Raw
    $Content -Replace '#VERSION#',$VERSION | Out-File "$WORKDIR\rocketchat.nuspec"
    # Same for install script
    $Content = Get-ChildItem -Path "$TEMPDIR\tools\chocolateyinstall.ps1" | Get-Content -Raw
    $Content = ( $Content -Replace '#VERSION#',$VERSION )
    $Content -Replace '#HASH#',$HASH | Out-File "$WORKDIR\tools\chocolateyinstall.ps1"
}

# Add to git and push
CD $WORKDIR 
git add .
CD ..\
CD ..\
git commit -m "Updated to version $VERSION"
git push

################################################
# Build & push to chocolatey
################################################
$PKGFile = "C:\Temp\"
$Nuspec = ( Get-ChildItem $WORKDIR\*.nuspec )
choco pack $Nuspec.Fullname --output-directory=$PKGFile 
Rename-Item ( Get-ChildItem "$PKGFile\$Package.$VERSION.nupkg" ) "$Package.nupkg"
choco push ( Get-ChildItem "$PKGFile\$Package.nupkg" ).Fullname -s="https://chocolatey.org/"
Remove-Item ( Get-ChildItem "$PKGFile\$Package.nupkg" ) -Force