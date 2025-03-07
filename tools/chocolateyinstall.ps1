$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.2.0/rocketchat-4.2.0-win-x64.exe' -checksum '96e72534ed28e0d49409291baf24dfe923e8dabd1ea12cf7f0e82594bfe1565c' -checksumType 'sha256'
