$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.2.3/rocketchat-setup-3.2.3.exe' -checksum '78DDC5EEAA328C69C4E8C9DBA8532ADD91B1A477CB812B51A0F8F99F09007750' -checksumType 'sha256'
