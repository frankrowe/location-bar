#!/bin/bash

# <bitbar.title>location-bar</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Frank Rowe</bitbar.author>
# <bitbar.author.github>frankrowe</bitbar.author.github>
# <bitbar.desc>Displays the current GPS coordinates (latitude,longitude)</bitbar.desc>
# <bitbar.image>http://frankrowe.org/img/location-bar.png</bitbar.image>
# <bitbar.dependencies>whereami</bitbar.dependencies>
# <bitbar.abouturl>https://github.com/frankrowe/location-bar</bitbar.abouturl>

WHEREAMI="$HOME/whereami"

LATS=`$WHEREAMI | grep Latitude  | awk -F" " '{print $2}' | awk '{print $1}'`
LNGS=`$WHEREAMI | grep Longitude | awk -F" " '{print $2}' | awk '{print $1}'`

for word in $LATS
do
    LAT=$word
done

for word in $LNGS
do
    LNG=$word
done

LC_NUMERIC="en_US.UTF-8" printf "%.4f, %.4f\n" $LAT $LNG
