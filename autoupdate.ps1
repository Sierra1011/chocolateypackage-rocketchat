param(
[string]$Version,
[string]$CHOCO_TOKEN
)

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$InvokePath = Split-Path ( $MyInvocation.MyCommand.Path ) -Parent
Set-Location $InvokePath
$Package = "rocketchat"

# define latest version logic
If ( !($Version) ) {
    $Headers = @{'Accept'='application/vnd.github.v3+json'}
    $Response = ( Invoke-WebRequest "https://api.github.com/repos/RocketChat/Rocket.Chat.Electron/releases/latest" -Method GET -Headers $Headers -UseBasicParsing) | ConvertFrom-Json
    $Version = $Response.tag_name
    Write-Output "Building package version $Version."
}

$TEMPDIR = ".\versions\template\"
$WORKDIR = ".\versions\$VERSION\"
$TempPath = Split-Path ( $MyInvocation.MyCommand.Path ) -Parent

If ( !( Test-Path "$WORKDIR\*.nuspec"  ) ) {
    # Get the Hash from the download
    $File = "$TempPath\rocketchat-$VERSION-win-x64.exe"
    $FileURL = "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/$VERSION/rocketchat-$VERSION-win-x64.exe"
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
}

################################################
# Build & push to chocolatey
################################################
choco apikey -k $CHOCO_TOKEN -s https://chocolatey.org
choco apikey -k $CHOCO_TOKEN -s https://push.chocolatey.org

$Nuspec = ( Get-ChildItem $WORKDIR\*.nuspec )
choco pack $Nuspec.Fullname --output-directory=$TempPath 

Rename-Item ( Get-ChildItem "$TempPath\$Package.$VERSION.nupkg" ) "$Package.nupkg"
choco push ( Get-ChildItem "$TempPath\$Package.nupkg" ).Fullname -s="https://chocolatey.org/"
exit 0
