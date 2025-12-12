$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.10.1/rocketchat-4.10.1-win-x64.exe' -checksum '37efb2f9aaf8ae6dfda7e471b84d8912e11af379aab5cb65dc853aea53905521' -checksumType 'sha256'
