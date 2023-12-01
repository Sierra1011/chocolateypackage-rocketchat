$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.11/rocketchat-3.9.11-win-x64.exe' -checksum '417ad95ba9977e06f2828f33da799c52cbe6973917927524d71bcdb4e3b7d1e8' -checksumType 'sha256'
