$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.5.0/rocketchat-4.5.0-win-x64.exe' -checksum '74d221480076fc2f5101fc6eccad5909f431ba04cb589ba88830d406764046b5' -checksumType 'sha256'
