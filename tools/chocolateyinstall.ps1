$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.8/rocketchat-3.9.8-win-x64.exe' -checksum 'e822114c7feb1a7bf40ea95f271a4821bf3e18ea62182d8a6ed9518fc3676dc1' -checksumType 'sha256'
