#!/bin/bash
# ******************************************
# Script : CPU Mining
# Developer: ch0
# ******************************************

sudo apt-get update -y
sudo apt-get install git -y
sudo apt-get install automake -y
sudo apt-get install g++ -y
sudo apt-get install libcurl4-openssl-dev -y
sudo apt-get install libssl-dev -y
git clone https://github.com/tpruvot/cpuminer-multi.git 
cd cpuminer-multi
./autogen.sh
./configure --with-crypto --with-curl
make
./cpuminer --cputest
wget https://raw.githubusercontent.com/ch0sys/GameCP/master/mining.sh
clear
echo "Finish"
echo "For Start : sh mining.sh"
