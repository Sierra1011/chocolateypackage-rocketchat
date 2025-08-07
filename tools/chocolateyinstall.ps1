$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.8.1/rocketchat-4.8.1-win-x64.exe' -checksum 'e0c18c615467a6e52d13388d1bfff7e88439aa3dcc07473d0f38ee5d99febe74' -checksumType 'sha256'
