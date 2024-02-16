$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.14/rocketchat-3.9.14-win-x64.exe' -checksum '2b0a3d96e73a9ea896c0ecd15f36e288fd7e57f781aabc6281c84594228616e0' -checksumType 'sha256'
