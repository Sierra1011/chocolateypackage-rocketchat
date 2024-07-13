$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.0.1/rocketchat-4.0.1-win-x64.exe' -checksum '578ce92ce47768377653871c817c510dc047f42d097f1cd3bdb5d6774ab4fbac' -checksumType 'sha256'
