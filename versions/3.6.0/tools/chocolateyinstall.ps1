$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.6.0/rocketchat-setup-3.6.0.exe' -checksum 'E23DD26CE7FA92C4238B04BFAB60D16A277B53841EA6315C89661300082D8B93' -checksumType 'sha256'
