$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.0.6/rocketchat-setup-3.0.6.exe' -checksum '8CA432AE6E3B3FA8E25BB745DEA58D191DA66BDCCF945916B4D3CE2DA65FA920' -checksumType 'sha256'
