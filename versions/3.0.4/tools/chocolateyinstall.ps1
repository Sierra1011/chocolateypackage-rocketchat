$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.0.4/rocketchat-setup-3.0.4.exe' -checksum '676988C832D646488CE0E4CA5C9455B4D59F3CEF806B089FBB7A48EA194BCF3C' -checksumType 'sha256'
