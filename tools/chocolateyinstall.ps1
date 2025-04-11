$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.3.1/rocketchat-4.3.1-win-x64.exe' -checksum '30a78d58aa2c03a39aaf52ce901e5a1cec8267f59ef828e8ada5a3526af4f9e1' -checksumType 'sha256'
