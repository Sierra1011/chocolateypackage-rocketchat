#!/bin/bash
# stty -echo

# create files in build directory
mkdir -p ./build
cp -R ./template/* ./build/

# get version
VERSION=$(curl -H 'Accept'='application/vnd.github.v3+json' -L "https://api.github.com/repos/RocketChat/Rocket.Chat.Electron/releases/latest" | jq -r .tag_name)
echo $VERSION

# get checksum
wget https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/$VERSION/rocketchat-$VERSION-win-x64.exe
CHECKSUM=$(shasum -a 256 rocketchat-$VERSION-win-x64.exe | awk '{ print $1 }')
echo $CHECKSUM

# replace version in nuspec
sed -i "s/#VERSION#/$VERSION/g" build/rocketchat.nuspec

# replace version in installer
sed -i "s/#VERSION#/$VERSION/g" build/tools/chocolateyinstall.ps1
sed -i "s/#HASH#/$CHECKSUM/g" build/tools/chocolateyinstall.ps1

