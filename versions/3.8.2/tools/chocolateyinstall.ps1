$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.8.2/rocketchat-setup-3.8.2.exe' -checksum '94134660C2CED34796D3106D0231DD6F5FDAF022F42BFE49AB3E2FD42D90F99D' -checksumType 'sha256'
