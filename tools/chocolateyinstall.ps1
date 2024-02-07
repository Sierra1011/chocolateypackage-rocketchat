$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.12/rocketchat-3.9.12-win-x64.exe' -checksum '3e7c4a3630cc95f4535120120b1ac533316981ab8ce1b75d0bf4426a6d5c7b22' -checksumType 'sha256'
