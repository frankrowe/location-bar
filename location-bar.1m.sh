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

LAT=`$WHEREAMI | grep Latitude  | awk -F" " '{print $2}' | awk '{print $1}'`
LNG=`$WHEREAMI | grep Longitude | awk -F" " '{print $2}' | awk '{print $1}'`

printf "%.4f, %.4f\n" "$LAT" "$LNG"
