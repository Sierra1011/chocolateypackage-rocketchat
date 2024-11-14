$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.1.2/rocketchat-4.1.2-win-x64.exe' -checksum 'f3e2cbd67b4ee128342928731988f3871663a71fa7c4a1c82633a427430f7dc7' -checksumType 'sha256'
