$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.7.1/rocketchat-4.7.1-win-x64.exe' -checksum '92b4516adfa9b2e904c457aa6731837a15de7f8d12cd0aa4e1b055773329abc0' -checksumType 'sha256'
