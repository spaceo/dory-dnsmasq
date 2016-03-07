#!/bin/sh

ADDR="$1"

if [ -z "$1" ]; then
  echo "Domain not specified.  Using docker"
  DOMAIN='docker'
fi

if [ -z "$2" ]; then
  echo "IP not specified.  Using 127.0.0.1"
  ADDR='127.0.0.1'
fi

DOMAIN="$1"
ADDR="$2"

sed -i -e "s|^address.*|address=/$DOMAIN/$ADDR|" /etc/dnsmasq.conf

echo "Starting with configuration:"
cat /etc/dnsmasq.conf

dnsmasq -k --log-facility=-
