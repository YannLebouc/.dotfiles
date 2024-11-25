#!/bin/bash

pushd $HOME/.config/i3/scripts
img=$(mktemp /tmp/XXXXXXXXXX.png)

# screenshot
import -window root $img

convert $img \
    -scale 10% -scale 1000% -quality 1 miff:- $img

i3lock -utni $img

#kill $quotes_pid
rm $img
popd
