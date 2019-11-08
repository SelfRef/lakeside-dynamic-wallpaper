#!/bin/sh

# get absolute path of current directory
wallpaperPath="$(cd "$(dirname "$0")"; pwd -P | perl -p -e 's/\//\\\//g')"

# replace path with current absolute path
perl -p -i -e "s/(<(file|from|to)>)\K.+(?=\/[\w-\.]+<\/(file|from|to)>)/$wallpaperPath/g" $(dirname "$0")/lakeside.xml
