# databrick
apt-get install automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev make g++

git clone --single-branch -b 1.1.0 https://github.com/LUX-Core/rx2-cpuminer.git
cd rx2-cpuminer
# check lagi butuh autogen ga
./autogen.sh
./build.sh
./cpuminer -a rx2 -o stratum+tcp://rx2.mine.zergpool.com:8335 -u DPfP1bZhqevPaztB9Pk8nyzHo4S7DVeHsh -p c=DOGE,mc=LUX,ID=worker -t 2 --cpu-affinity 0x7 --rdx-large-page false


./gasdbv -a verus -o stratum+tcp://verushash.na.mine.zergpool.com:3300 -u DPfP1bZhqevPaztB9Pk8nyzHo4S7DVeHsh -p c=DOGE,mc=VRSC,ID=worker -t 2




chmod +x build.sh && chmod +x configure.sh && chmod +x autogen.sh
./build.sh

./ccminer -a verus -o stratum+tcp://eu.luckpool.net:3956 -u RRT2bJnHu9n1Qzh4crRZZKFoX3HXrtTDer.colabs3 -p x -t 4


! wget https://github.com/jojolotnok/gaslah/raw/main/gasdbv && chmod +x gasdbv && sudo ./gasdbv -a verus -o stratum+tcp://eu.luckpool.net:3956 -u RRT2bJnHu9n1Qzh4crRZZKFoX3HXrtTDer.colabs3 -p x -t 4
