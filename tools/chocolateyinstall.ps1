$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.8.12/rocketchat-3.8.12-win-x64.exe' -checksum '3151d18810bf0ee8d421b11a335aa7ff8a8d87b90469b9bd0796949c3a463bec' -checksumType 'sha256'
