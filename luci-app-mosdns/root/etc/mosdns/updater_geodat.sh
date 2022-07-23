#!/bin/bash -e
set -o pipefail
rm -rf  /tmp/mosdns
mkdir /tmp/mosdns
wget https://cdn.divineengine.net/gh/https://raw.githubusercontent.com/Loyalsoldier/geoip/release/cn.dat -nv -O /tmp/mosdns/geoip.dat
wget https://cdn.divineengine.net/gh/https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat -nv -O /tmp/mosdns/geosite.dat
find /tmp/mosdns/* -size -20k -exec rm {} \;
chmod -R  755  /tmp/mosdns
cp -rf /tmp/mosdns/* /etc/mosdns
rm -rf  /tmp/mosdns
exit 0
