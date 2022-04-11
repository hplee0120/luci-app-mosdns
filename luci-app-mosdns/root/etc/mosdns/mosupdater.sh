#!/bin/bash -e
set -o pipefail
rm -rf  /tmp/mosdns
mkdir /tmp/mosdns
wget https://cdn.jsdelivr.net/gh/Loyalsoldier/domain-list-custom@release/geosite.dat -nv -O /tmp/mosdns/geosite.dat
wget https://cdn.jsdelivr.net/gh/Loyalsoldier/geoip@release/geoip-only-cn-private.dat -nv -O /tmp/mosdns/geoip.dat
find /tmp/mosdns/* -size -20k -exec rm {} \;
chmod -R  755  /tmp/mosdns
cp -rf /tmp/mosdns/* /etc/mosdns
rm -rf  /tmp/mosdns
exit 0
