$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.0.5/rocketchat-setup-3.0.5.exe' -checksum '60BC8FECD7F698AEC9F256260AE76DC7236B4DA6DBB1B03FEA488C23E6911F93' -checksumType 'sha256'
