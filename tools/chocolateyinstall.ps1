$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.9/rocketchat-3.9.9-win-x64.exe' -checksum 'f69a96771f271a5ca84a619ad7dbe76fb0001d121d1cbfe61bc43e47e3b3a539' -checksumType 'sha256'
