$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.7.5/rocketchat-setup-3.7.5.exe' -checksum '4F0A01D9F6FAB9AE7BADE136A5842A82BE4A70BAAC4A29E334BE9E57305DB0DF' -checksumType 'sha256'
