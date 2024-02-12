$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.9.13/rocketchat-3.9.13-win-x64.exe' -checksum '40da75988ec220aac6009e306354c08b8c7bc8f726e893ecf02112ec7673b06d' -checksumType 'sha256'
