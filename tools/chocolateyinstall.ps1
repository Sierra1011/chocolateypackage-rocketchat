$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.10.0/rocketchat-4.10.0-win-x64.exe' -checksum '808278c4b8017359ba554c467e1bdd779f09f58472500b445ebc833502f36f85' -checksumType 'sha256'
