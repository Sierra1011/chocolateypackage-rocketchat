$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.7.0/rocketchat-4.7.0-win-x64.exe' -checksum '108ff498344238a091af47a21970b6b9e594c94358da03b5e0b6b24c5230ba35' -checksumType 'sha256'
