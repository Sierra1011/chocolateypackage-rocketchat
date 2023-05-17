$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.4/rocketchat-3.9.4-win-x64.exe' -checksum 'ee491fa27e4e400726e1aed619a05a4c3b814b54727ae2e2b99255f58f81cc50' -checksumType 'sha256'
