#!/bin/bash

# monitor.sh - Monitors a web page for changes
# eSpeak alert if non 200 code is found
# Usage: ./moniurl.sh https://hoshisato.com

# DOMAIN=$1

while true; do
if curl -s https://catalog.usmint.gov/peace-2021-silver-dollar-21XH.html?cgid=2021-product-schedule | grep "TBD" > /dev/null
 then
        echo "Status: TBD"
        date
        sleep 92
	clear
 else
        espeak -k20 -v +f4 -p 70 -s 200 "Peace Dollar Release Update!"
	echo "!!! Peace Dollar Release Update !!!"
fi
done

