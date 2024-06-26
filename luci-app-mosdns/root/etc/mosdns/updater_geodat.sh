#!/bin/bash -e
set -o pipefail
rm -rf  /tmp/mosdns
mkdir /tmp/mosdns
wget --timeout 60 --read-timeout=600 --no-check-certificate https://raw.githubusercontent.com/hplee0120/luci-app-mosdns/master/luci-app-mosdns/root/etc/mosdns/chinalist.txt -nv -O /tmp/mosdns/chinalist.txt
wget --timeout 60 --read-timeout=600 --no-check-certificate https://raw.githubusercontent.com/hplee0120/luci-app-mosdns/master/luci-app-mosdns/root/etc/mosdns/geoip.dat -nv -O /tmp/mosdns/geoip.dat
find /tmp/mosdns/* -size -20k -exec rm {} \;
chmod -R  755  /tmp/mosdns
cp -rf /tmp/mosdns/* /etc/mosdns
rm -rf  /tmp/mosdns
exit 0
