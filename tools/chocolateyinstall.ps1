$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.8.0/rocketchat-4.8.0-win-x64.exe' -checksum 'd8c3899925b2f637ba2936a103a62f04f2fd7155b9974be83fce5f8e86e232b7' -checksumType 'sha256'
