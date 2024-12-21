#!/bin/bash

make clean
make
sudo make install
make clean

echo
tput setaf 2
echo "################################################################"
echo "Restarting ChadWM with your new build"
echo "################################################################"
tput sgr0
echo

# Restart ChadWM by sending SIGUSR1 to the correct process
pkill -USR1 chadwm
