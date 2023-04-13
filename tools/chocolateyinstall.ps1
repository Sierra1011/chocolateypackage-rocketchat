$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.2/rocketchat-3.9.2-win-x64.exe' -checksum '3ed08f54489d08b87604202831ed115ab9267af313211e260efe97efc5788eb2' -checksumType 'sha256'
