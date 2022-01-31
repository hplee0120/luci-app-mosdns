#!/bin/bash -e
set -o pipefail
rm -rf  /tmp/mosdns
mkdir /tmp/mosdns
wget https://cdn.jsdelivr.net/gh/Loyalsoldier/domain-list-custom@release/geosite.dat -nv -O /tmp/mosdns/geosite.dat
wget https://ispip.clang.cn/all_cn.txt -nv -O /tmp/mosdns/all_cn.txt
wget https://ispip.clang.cn/all_cn_ipv6.txt -nv -O /tmp/mosdns/all_cn_ipv6.txt
find /tmp/mosdns/* -size -20k -exec rm {} \;
chmod -R  755  /tmp/mosdns
cp -rf /tmp/mosdns/* /etc/mosdns
rm -rf  /tmp/mosdns
exit 0
