﻿$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/#VERSION#)/rocketchat-setup-#VERSION#.exe' -checksum '#HASH#' -checksumType 'sha256'