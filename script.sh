#!/usr/bin/bash
i=0
while [ "$i" -lt 60 ] 
do
cat /sys/class/net/enp0s3/statistics/rx_bytes >>~/Documents/trafic.rx
cat /sys/class/net/enp0s3/statistics/tx_bytes >>~/Documents/trafic.tx
echo $i >>minuts
sleep 60
let $[ i += 1 ] 
done
paste minuts trafic.rx trafic.tx > trafic.sh

