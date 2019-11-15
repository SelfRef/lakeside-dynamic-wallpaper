#!/bin/sh

# get absolute path of current directory
wallpaperPath="$(cd "$(dirname "$0")"; pwd -P)"

echo 'Updating paths...'
$wallpaperPath/update_paths.sh

echo 'Setting wallpaper...'
gsettings set org.gnome.desktop.background picture-uri "file:///$wallpaperPath/lakeside.xml"
gsettings set org.gnome.desktop.screensaver picture-uri "file:///$wallpaperPath/lakeside.xml"

echo 'Done'
