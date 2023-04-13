$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.3/rocketchat-3.9.3-win-x64.exe' -checksum 'cea48319d4a51e8c6c24ec70879c9173654c3689d0c1910bd672381fbc129cd5' -checksumType 'sha256'
