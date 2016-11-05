#! /bin/bash

ip=$(wget http://ipinfo.io/ip -qO -)
url="http://g43.clanweb.eu/raspberry/update.php?update=true&device=raspberryPi&ip="
curl "$url$ip" > /dev/null
