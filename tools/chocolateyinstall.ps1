$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.5/rocketchat-3.9.5-win-x64.exe' -checksum '2e258cd24dffdda8be482ec233717d5087caf9b7091bab2111731c1b06535af8' -checksumType 'sha256'
