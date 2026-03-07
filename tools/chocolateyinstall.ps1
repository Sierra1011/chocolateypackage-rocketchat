$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.13.0/rocketchat-4.13.0-win-x64.exe' -checksum 'd88f4551a4aa47be8b99e20349c07999cc4ebabb7b3a60cbb5112e83b8e3acec' -checksumType 'sha256'
