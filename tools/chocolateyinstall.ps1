$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.8.11/rocketchat-3.8.11-win-x64.exe' -checksum '65a7a75d4307d03786a21f6f2ce2ac6c2823e35ced322adf218aa5540d807845' -checksumType 'sha256'
