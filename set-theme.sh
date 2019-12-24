#!/bin/sh

if [ -z "$1" ]; then
	echo 'Missing theme variant name'
else
	gsettings set org.mate.Marco.general theme "Redmond97 $1"
	xfconf-query -c xsettings -p /Net/ThemeName -s "Redmond97 $1"
fi
