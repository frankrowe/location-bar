#!/bin/bash

WHEREAMI="$HOME/whereami"

LAT=`$WHEREAMI | grep Latitude  | awk -F" " '{print $2}' | awk '{print $1}'`
LNG=`$WHEREAMI | grep Longitude | awk -F" " '{print $2}' | awk '{print $1}'`

printf "%.4f, %.4f\n" "$LAT" "$LNG"
