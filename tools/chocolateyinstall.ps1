$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.5/rocketchat-3.9.5-win-x64.exe' -checksum '62c29f4aa121a6254b2701c206b1badcb214e24ca3a301d85868cc9974b8223b' -checksumType 'sha256'
