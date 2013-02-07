#!/bin/bash

current_ip=$(lynx --dump http://ipecho.net/plain)
#echo "current ip $current_ip"

archive_ip=$(<~/check-ip-address/archive_ip)
#echo "archive ip $archive_ip"

if [ "$current_ip"  =  "$archive_ip" ];
then
	echo "do nothing"
else
#	echo "not equal"
	rm ~/check-ip-address/archive_ip
	echo "$current_ip" > ~/check-ip-address/archive_ip
	echo "old ip: $archive_ip  new ip: $current_ip" | mail -s “Your-IP-address-changed” "your.email@domain.com"
fi
