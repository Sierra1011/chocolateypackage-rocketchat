$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.12.0/rocketchat-4.12.0-win-x64.exe' -checksum 'ec72122ab57b6d96aff8e4c12b3dc8a04d2936c9e6bb43966f44e5d84a52c507' -checksumType 'sha256'
