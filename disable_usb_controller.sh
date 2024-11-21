#!/bin/bash

case "$1" in
    hibernate|suspend)
        echo 1 > /sys/bus/pci/devices/0000:00:14.0/remove
        echo 1 > /sys/bus/pci/devices/0000:05:00.0/remove
        echo 1 > /sys/bus/pci/devices/0000:39:00.0/remove
        ;;
    resume|thaw)
        echo 1 > /sys/bus/pci/rescan
        ;;
esac

