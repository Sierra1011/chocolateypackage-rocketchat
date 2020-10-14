################################################
# Get new version
################################################

# Populate Version
$VERSION = "3.0.3" # Get-Content? Scrape page?


$TEMPDIR = ".\versions\template\"
$WORKDIR = ".\versions\$VERSION\"
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

################################################
# Copy to Rocketchat folder
################################################
$NEWDIR = ".\rocketchat" 
Remove-Item $NEWDIR -Recurse -Force
New-Item -Path $NEWDIR -ItemType Directory

Foreach ( $Item in ( Get-ChildItem $WORKDIR ) ) {
    Copy-Item $Item.Fullname -Destination $NEWDIR
}