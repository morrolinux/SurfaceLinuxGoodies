#!/bin/bash
BLUEZPATH="/usr/local/bin/bluez/test/test-device"
BTMAC=""

while [[ $BTMAC == "" ]]
do
	BTMAC=$(python2.7 /usr/local/bin/bluez/test/test-device list|grep "Surface Pen"|cut -d' ' -f 1)
	sleep 1
done

while true
do
	sleep 0.3
	python2.7 $BLUEZPATH connect $BTMAC
done
