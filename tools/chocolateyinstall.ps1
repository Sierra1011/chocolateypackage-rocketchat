$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.3.0/rocketchat-4.3.0-win-x64.exe' -checksum '8a43955bded71996ab9bc854d09a3a0fa8c3e0221d370cc87df4852b13f7eb65' -checksumType 'sha256'
