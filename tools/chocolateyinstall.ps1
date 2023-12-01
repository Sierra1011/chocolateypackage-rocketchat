$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.11/rocketchat-3.9.11-win-x64.exe' -checksum '5715b863b6175ff77b32cfec9b983379ef3826a69f247ddab1e475281076bcc5' -checksumType 'sha256'
