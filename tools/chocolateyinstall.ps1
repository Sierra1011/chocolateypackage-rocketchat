$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.1/rocketchat-3.9.1-win-x64.exe' -checksum 'cb0e7a6305926b8b059ef8164f99ac026e14ca2881f0ebb94285dcdd879e392e' -checksumType 'sha256'
