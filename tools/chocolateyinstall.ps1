$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.8.17/rocketchat-3.8.17-win-x64.exe' -checksum '24df1701d5c2961878e3db43344c125f460e3f1827a63684d7a401e639ba100a' -checksumType 'sha256'
