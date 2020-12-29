[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$InvokePath = Split-Path ( $MyInvocation.MyCommand.Path ) -Parent
Set-Location $InvokePath
$Package = "rocketchat"

# Read latest version
$Version = Read-Host("What version do you want to build?")
Write-Output "Building package version $Version."

$TEMPDIR = "$InvokePath\versions\template\"
$WORKDIR = "$InvokePath\versions\$VERSION\"

If ( !( Test-Path "$WORKDIR\*.nuspec"  ) ) {
    # Get the Hash from the download
    $File = "C:\Temp\rocketchat-setup-$VERSION.exe"
    $FileURL = "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/$($VERSION)/rocketchat-setup-$($VERSION).exe"
    try {
        ( New-Object System.Net.WebClient ).DownloadFile($FileURL,$File)    
    }
    catch {
        Write-Error "Download for version $VERSION failed."
        Exit 1
    }
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
    
    # Add to git and push
    git add $WORKDIR\.
    git commit -m "Updated to version $VERSION"
    git push
}


################################################
# Build & push to chocolatey
################################################
$PKGFile = "C:\Temp\"
$Nuspec = ( Get-ChildItem $WORKDIR\*.nuspec )
choco pack $Nuspec.Fullname --output-directory=$PKGFile 
Rename-Item ( Get-ChildItem "$PKGFile\$Package.$VERSION.nupkg" ) "$Package.nupkg"
choco push ( Get-ChildItem "$PKGFile\$Package.nupkg" ).Fullname -s="https://chocolatey.org/"
Remove-Item ( Get-ChildItem "$PKGFile\$Package.nupkg" ) -Force
