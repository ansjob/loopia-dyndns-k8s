#!/bin/bash

set -e
username=$1
password=$2
domain=$3
wanip=$(curl -s ipecho.net/plain)
response=$(curl -s --user "$username:$password" \
	"https://dyndns.loopia.se?hostname=$domain&myip=$wanip")
if [[ "$response" == "nochg" || "$response" == "good" ]] ; then
	echo "Set $domain -> $wanip"
else
	echo "Something went wrong. Response: $response"
	exit 1
fi
