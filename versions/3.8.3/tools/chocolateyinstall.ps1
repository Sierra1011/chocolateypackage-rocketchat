$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.8.3/rocketchat-setup-3.8.3.exe' -checksum 'DA8B62CB44BED6BCBBD9B50B9A03913C201E01295D614ED08D190D7E11CE0A70' -checksumType 'sha256'
