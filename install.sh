#!/bin/sh

echo 'Updating paths...'
./update_paths.sh

# get absolute path of current directory
wallpaperPath="$(cd "$(dirname "$0")"; pwd -P)"

echo 'Setting wallpaper...'
gsettings set org.gnome.desktop.background picture-uri "file:///$wallpaperPath/lakeside.xml"

echo 'Done'
