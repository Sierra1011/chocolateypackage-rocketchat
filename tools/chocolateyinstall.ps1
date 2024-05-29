$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.15/rocketchat-3.9.15-win-x64.exe' -checksum '0184530790aace827a4fa583f2e2e89b32c6a593355f60e097992b6c043729c9' -checksumType 'sha256'
