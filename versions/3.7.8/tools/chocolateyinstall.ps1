$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.7.8/rocketchat-setup-3.7.8.exe' -checksum '568DD08535B6FB8F89C5388F5166F1EDF5455F7DA835FC87808001315E21814D' -checksumType 'sha256'
