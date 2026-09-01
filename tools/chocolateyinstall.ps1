$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.17.0/rocketchat-4.17.0-win-x64.exe' -checksum '8a12e7bd5b6812a684ca167207c0ebe45466cc5a1f73819ef16764f0dbed6219' -checksumType 'sha256'
