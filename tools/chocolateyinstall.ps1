$ErrorActionPreference = 'Stop';
Install-ChocolateyPackage -packageName 'rocketchat' -FileType exe -SilentArgs '/S /allusers' -Url 'https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.8.16/rocketchat-3.8.16-win-x64.exe' -checksum '15ce3a34eb13aef3720cbb1fd699227f3bf2f1700c4ccff0432b758a4366eac9' -checksumType 'sha256'
