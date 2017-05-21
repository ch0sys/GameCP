sudo apt-get update
sudo apt-get install git
sudo apt-get install automake
sudo apt-get install g++
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install libssl-dev
git clone https://github.com/tpruvot/cpuminer-multi.git 
cd cpuminer-multi
./autogen.sh
./configure --with-crypto --with-curl
make
./cpuminer --cputest
wget https://raw.githubusercontent.com/ch0sys/GameCP/master/mining.sh
