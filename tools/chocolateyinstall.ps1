$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.1.1/rocketchat-4.1.1-win-x64.exe' -checksum 'f0252926f3f3f83db5ee9faf684ff8cfce2f936fbaea6cef83f9d9b990bc5786' -checksumType 'sha256'
