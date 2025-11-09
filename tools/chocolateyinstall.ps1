$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.9.2/rocketchat-4.9.2-win-x64.exe' -checksum '49650d73f01b137b565ce1f57301b2fa0b2a7d46c3fa412e2f4f3e6d72c0b92b' -checksumType 'sha256'
