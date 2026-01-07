$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.11.0/rocketchat-4.11.0-win-x64.exe' -checksum 'c03cd07c5193eb0dd7d76e7e0e37582aa241badf113a0d5ddd0a72168da53be6' -checksumType 'sha256'
