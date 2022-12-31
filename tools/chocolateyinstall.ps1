$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.8.15/rocketchat-3.8.15-win-x64.exe' -checksum '1306cd11b3284accd8edbea8f09221ce658ad5b44a8fb87c2edc1b951d7d14cf' -checksumType 'sha256'
