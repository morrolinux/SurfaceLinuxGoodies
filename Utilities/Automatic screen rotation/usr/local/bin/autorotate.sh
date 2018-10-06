#!/bin/bash

rotate="/usr/local/bin/rotate-all.sh"
current="none"
lastr="none"

accelx=$(find /sys/devices/ -iname "*in_accel_x_raw*")
accely=$(find /sys/devices/ -iname "*in_accel_y_raw*")

while true; do

	sleep 1
	
	commandx=$(cat $accelx)
	commandy=$(cat $accely)
	
	if [[ $commandx -gt 500 ]] && [[ $commandx -lt 1020 ]]
	then
		current="ccw"
	elif [[ $commandx -gt 64000 ]] && [[ $commandx -lt 65200 ]]
	then
		current="cw"
	elif [[ $commandy -gt 300 ]] && [[ $commandy -lt 1000 ]]
	then
		current="half"
	elif [[ $commandy -gt 64490 ]] && [[ $commandy -lt 65100 ]]
	then
		current="none"
	fi
	
	if [[ $lastr != $current ]]
	then 
		echo "auto-rotating $current"
		$rotate $current
		lastr=$current
	fi

done
