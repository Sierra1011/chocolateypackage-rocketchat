$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.0.0/rocketchat-4.0.0-win-x64.exe' -checksum 'a3bad98b52f203d50be3ba278ee7ca7e45480baacff0501e81f0677ffcd33c18' -checksumType 'sha256'
