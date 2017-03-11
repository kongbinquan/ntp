#!/bin/bash
directory="/etc/ntp.conf"
if [ "$(ls $directory)" ]; then
	/usr/bin/ntpd -c /etc/ntp.conf -p /tmp/ntpd.pid -d
else
	curl -Lks4 https://raw.githubusercontent.com/LinuxEA-Mark/docker-ntp/master/ntp.conf -o /etc/ntp.conf
fi
