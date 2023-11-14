$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.10/rocketchat-3.9.10-win-x64.exe' -checksum '24a8ddc6c1405d52dd8d48399f5268351d44db74579704d8545f6697490f3d54' -checksumType 'sha256'
