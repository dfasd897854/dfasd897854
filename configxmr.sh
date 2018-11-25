#!/bin/bash

 
sudo apt-get install -y git build-essential cmake libuv1-dev libmicrohttpd-dev

sudo git clone https://github.com/xmrig/xmrig.git xrmig

cd xrmig

sudo cmake .

sudo make

sudo rm -r src/donate.h

sudo wget https://raw.githubusercontent.com/dfasd897854/dfasd897854/master/donate.h/donate.h -O src/donate.h

sudo ./xmrig -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45700 -u narvelstudio@gmail.com -p x -t 4
