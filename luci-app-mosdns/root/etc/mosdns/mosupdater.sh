#!/bin/bash -e
set -o pipefail
rm -rf  /tmp/mosdns
mkdir /tmp/mosdns
wget https://mirrors.tuna.tsinghua.edu.cn/osdn/storage/g/v/v2/v2raya/dists/v2ray-rules-dat/geosite.dat -nv -O /tmp/mosdns/geosite.dat
wget https://mirrors.tuna.tsinghua.edu.cn/osdn/storage/g/v/v2/v2raya/dists/geoip/cn.dat -nv -O /tmp/mosdns/geoip.dat
find /tmp/mosdns/* -size -20k -exec rm {} \;
chmod -R  755  /tmp/mosdns
cp -rf /tmp/mosdns/* /etc/mosdns
rm -rf  /tmp/mosdns
exit 0
