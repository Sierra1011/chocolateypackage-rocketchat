$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.0.3/rocketchat-setup-3.0.3.exe' -checksum 'A4B8D31D79430D76914AF356ACF9579FC881F5BD41F1249C949C2E36CABA1B57' -checksumType 'sha256'
