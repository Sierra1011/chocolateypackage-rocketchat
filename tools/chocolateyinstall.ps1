$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.11.1/rocketchat-4.11.1-win-x64.exe' -checksum '70abac25ced56b14cb5096b158297910b1b781994e60b2c5b5d8e3435f1cf5c2' -checksumType 'sha256'
