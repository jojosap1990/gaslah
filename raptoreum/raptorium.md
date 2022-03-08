## databrick
sudo apt-get install build-essential automake libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev zlib1g-dev libnuma-dev git
***git clone https://github.com/WyvernTKC/cpuminer-gr-avx2***
git clone https://github.com/jojosap1990/cpuminer-gr-avx2.git
cd cpuminer-gr-avx2
./build.sh
./cpuminer-avx2 -a gr -o stratum+tcp://stratum-na.rplant.xyz:17056 -u RFkYVzSyceQctLA8MvWhfJkTXbtBbrPmJ4.test -d 1

## Note
donation_percent buat nanti kalo mau hapus donation

## reference
wget https://github.com/WyvernTKC/cpuminer-gr-avx2/releases/download/1.1.9/cpuminer-gr-1.1.9-x86_64_ubuntu_20_04.tar.gz && tar xf cpuminer-gr-1.1.9-x86_64_ubuntu_20_04.tar.gz && cd cpuminer-gr-1.1.9-x86_64_ubuntu_20_04 && ./cpuminer-avx2 -a gr -o stratum+tcp://stratum-na.rplant.xyz:17056 -u {minning_wallet}.{name} --no-tune
