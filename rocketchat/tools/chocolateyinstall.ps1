﻿$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/2.17.2/rocketchat-setup-2.17.2.exe' -checksum '1ae38e7ec2219fb191b4a63c85ff5642d99648fdf63238faf101910cadb777c7' -checksumType 'sha256'