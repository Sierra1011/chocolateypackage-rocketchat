# Populate Version
$VERSION = "3.0.3" # Get-Content? Scrape page?
$TEMPDIR = ".\versions\template\"
$WORKDIR = ".\versions\$VERSION\"

# Make version folder
New-Item -Path $WORKDIR -ItemType Directory
New-Item -Path "$WORKDIR\tools" -ItemType Directory


#VERSION#
# Get nuspec template content, write to new file
$Content = Get-ChildItem -Path "$TEMPDIR\rocketchat.nuspec" | Get-Content -Raw
$Content -Replace '#VERSION#',$VERSION | Out-File "$WORKDIR\rocketchat.nuspec"

#HASH#
# Same for install script
$Content = Get-ChildItem -Path "$TEMPDIR\tools\chocolateyinstall.ps1" | Get-Content -Raw
$Content = ( $Content -Replace '#VERSION#',$VERSION )
$Content -Replace '#HASH#',$HASH | Out-File "$WORKDIR\tools\chocolateyinstall.ps1"


$FileURL = "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/$($VERSION))/rocketchat-setup-$($VERSION).exe"

$OutFile = "rocketchat-setup-$($VERSION).exe"

Invoke-WebRequest -Uri $FileURL -OutFile $OutFile 

$Hash = Get-FileHash $File -Algorithm SHA256
