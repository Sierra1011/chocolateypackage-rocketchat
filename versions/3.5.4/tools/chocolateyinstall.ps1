$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.5.4/rocketchat-setup-3.5.4.exe' -checksum 'D8F853BE51232BC27E862BAAC3D0B9E540E8CACED066779F3FF77E7F87D16E90' -checksumType 'sha256'
