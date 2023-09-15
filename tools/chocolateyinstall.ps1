$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.7/rocketchat-3.9.7-win-x64.exe' -checksum '45077a07ebd8e3cc32c6e018982181d40b22764a10b33cc967a66db6c339469b' -checksumType 'sha256'
