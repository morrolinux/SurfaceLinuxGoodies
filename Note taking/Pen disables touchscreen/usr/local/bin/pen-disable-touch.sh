#!/bin/bash
#enable/disable touch via
#xinput set-prop "NTRG0001:01 1B96:1B05" "Device Enabled" 1
#
#Properties that change when the pen is hovering:
#xinput list-props "NTRG0001:01 1B96:1B05 Pen stylus"|grep "Wacom Serial IDs"

deviceName="NTRG0001:01 1B96:1B05 Pen stylus"
deviceProp="Wacom Serial IDs"

export DISPLAY=':0.0'
export XAUTHORITY="/run/user/1000/gdm/Xauthority"

currente="0"
laste="0"

while true; do
	
	sleep 0.5
	
	isPenHovering=$(xinput list-props "$deviceName"|grep "$deviceProp"|cut -d, -f 4|cut -c 2)

	if [[ $isPenHovering != "0" ]]
	then
		currente="0"
	else
		currente="1"
	fi

	if [[ $laste != $currente ]]
	then
		xinput set-prop "NTRG0001:01 1B96:1B05" "Device Enabled" $currente
		laste=$currente
	fi
done
