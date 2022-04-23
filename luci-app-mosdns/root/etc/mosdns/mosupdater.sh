#!/bin/bash -e
set -o pipefail
rm -rf  /tmp/mosdns
mkdir /tmp/mosdns
wget https://raw.githubusercontent.com/Jan20th9e/openwrt-mos/master/luci-app-mosdns/root/etc/mosdns/chnlist.txt -nv -O /tmp/mosdns/chnlist.txt
wget https://raw.githubusercontent.com/Jan20th9e/openwrt-mos/master/luci-app-mosdns/root/etc/mosdns/gfwlist.txt -nv -O /tmp/mosdns/gfwlist.txt
wget https://raw.githubusercontent.com/Jan20th9e/openwrt-mos/master/luci-app-mosdns/root/etc/mosdns/geoip.dat -nv -O /tmp/mosdns/geoip.dat
find /tmp/mosdns/* -size -20k -exec rm {} \;
chmod -R  755  /tmp/mosdns
cp -rf /tmp/mosdns/* /etc/mosdns
rm -rf  /tmp/mosdns
exit 0
