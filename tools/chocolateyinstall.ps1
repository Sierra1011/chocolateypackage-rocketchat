$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.8.14/rocketchat-3.8.14-win-x64.exe' -checksum '7ec16973349d88a81cba9a01342fa704e466ab9ce8202761a9a3727d15203cb1' -checksumType 'sha256'
