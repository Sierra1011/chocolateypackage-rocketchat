$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.2/rocketchat-3.9.2-win-x64.exe' -checksum 'beb2c4d67d6d694e3421482023e60d7ea4b668cdd559a79338b521f145f73fa9' -checksumType 'sha256'
