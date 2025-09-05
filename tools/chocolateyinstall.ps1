$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.9.0/rocketchat-4.9.0-win-x64.exe' -checksum '9e8de142c9876cd8615511dca499c25c72bb81f89d895a618e22dda12a6837e4' -checksumType 'sha256'
