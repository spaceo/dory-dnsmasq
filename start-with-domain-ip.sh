#!/bin/sh

address=
while [ "$#" -ge 2 ]; do
  address="${address}address=/$1/$2\n"
  shift 2
done

if [ -n "$address" ]; then
  sed -i -e "s|^address.*|${address}|" /etc/dnsmasq.conf
fi

echo "Starting with configuration:"
cat /etc/dnsmasq.conf

dnsmasq -k --log-facility=-
