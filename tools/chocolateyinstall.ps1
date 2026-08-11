$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.16.0/rocketchat-4.16.0-win-x64.exe' -checksum '8ce01874553da96add5631b25be10bb9968ef67da7ce8832bbabe2da60159e87' -checksumType 'sha256'
