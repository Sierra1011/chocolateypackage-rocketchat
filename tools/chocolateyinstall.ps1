$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.6.0/rocketchat-4.6.0-win-x64.exe' -checksum '57a15aa6b41fa4a015c06746d14374829c721b4a47037d0cd608964cebf03077' -checksumType 'sha256'
