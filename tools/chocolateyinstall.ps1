$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.0/rocketchat-3.9.0-win-x64.exe' -checksum '21e8095cf39574ace0060d7cda801dc5693a956d54b15497fcd1877b9f281f21' -checksumType 'sha256'
