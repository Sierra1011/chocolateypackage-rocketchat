$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.0.2/rocketchat-4.0.2-win-x64.exe' -checksum '4874e24be125185c54e2dc7b14b093a9272071cd1f0baa38c1c243710b1d0348' -checksumType 'sha256'
