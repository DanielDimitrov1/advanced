#!/bin/bash

gateway_ip="192.168.56.15" #VMNIC2
interval=10

while true; do
  if ping -c 1 -W 1 $gateway_ip; then
    echo "Gateway ($gateway_ip) is availabe"
  else 
    echo "Gateway ($gateway_ip) is not available"
  fi
  sleep $interval
done