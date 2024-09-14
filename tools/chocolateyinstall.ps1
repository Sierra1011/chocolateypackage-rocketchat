$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/4.1.0/rocketchat-4.1.0-win-x64.exe' -checksum '4179a667e94ebd04330512847833d93acbf416a95296d68852f71ac033f64474' -checksumType 'sha256'
