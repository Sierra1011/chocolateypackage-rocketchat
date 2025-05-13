$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.4.0/rocketchat-4.4.0-win-x64.exe' -checksum '18e3fc6c522317cc768a0052148217f5846d70c3d3f7611700791f758a0457da' -checksumType 'sha256'
