#!/bin/bash

while : ; do
    stress-ng --vm-bytes $(awk '/MemAvailable/{printf "%d\n", $2 * 1.03;}' < /proc/meminfo)k --vm-keep -m 6
done
