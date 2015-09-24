#!/bin/bash
#
# 2012 August 29 - Andre Luiz Girol - andregirol .at. yahoo .dot. com .dot. br
#
# Script that changes the ethernet interfaces' mac address
#
#

echo "Turning off the interface"
ifconfig eth0 down

# Changing the mac addres based on info given by the user
echo "Changing mac addres of eth0"
ifconfig eth0 hw ether $1

# Turning on the interface
echo "Turning on the inferface"
ifconfig eth0 up

echo "Your new mac address is:"
ifconfig
