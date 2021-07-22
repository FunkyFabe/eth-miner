#!/bin/bash
util1=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | awk 'NR==1{print $1}')
util2=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | awk 'NR==2{print $1}')
if [ $util1 -lt 80 ] || [ $util2 -lt 80 ]; then
  echo "restarting container"
  cd /home/fabian/eth-miner
  /usr/local/bin/docker-compose restart
else
  echo "continuing"
fi