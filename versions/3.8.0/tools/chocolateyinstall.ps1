$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.8.0/rocketchat-setup-3.8.0.exe' -checksum '088B653FB3BA849A44797758ED0B708C4B9450A45B4D5C6E2EF558DEFC75E6BD' -checksumType 'sha256'
