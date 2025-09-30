$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.9.1/rocketchat-4.9.1-win-x64.exe' -checksum 'ea76baed3c6bebe56fcbebd7208b22d88f10f7d275ef7d7acdada8ae1d54756e' -checksumType 'sha256'
