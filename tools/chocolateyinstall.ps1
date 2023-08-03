$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.6/rocketchat-3.9.6-win-x64.exe' -checksum '679bb29cff475b254a972f29b86fbfa9379b9df9731584ff8e812042837b3fa8' -checksumType 'sha256'
