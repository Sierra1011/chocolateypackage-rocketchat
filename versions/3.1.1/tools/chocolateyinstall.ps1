$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.1.1/rocketchat-setup-3.1.1.exe' -checksum '0B3128DE52B308C4179AC06AD0B0A356263C00CBE51CA46C6EB06B27885D99F8' -checksumType 'sha256'
