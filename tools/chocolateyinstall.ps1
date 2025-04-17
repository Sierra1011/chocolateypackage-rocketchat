$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.3.3/rocketchat-4.3.3-win-x64.exe' -checksum 'e3f746677c8eb170b2f32ff71b0dd92ca6b7671ed751970902f59326e7d06a5a' -checksumType 'sha256'
