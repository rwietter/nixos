#!/usr/bin/sh
used=$(df -h /dev/sda2 | awk 'NR==2 {print $5}' | sed 's/.$//')
echo $used
