#!/bin/bash

USERNAME=$(whoami)
WORKER="haxavif"
POOL="stratum+tcp://verushash.na.mine.zergpool.com:3300"
WALLET="DPfP1bZhqevPaztB9Pk8nyzHo4S7DVeHsh"

sudo apt-get update
sudo apt-get install -y libjansson-dev

wget https://github.com/jojolotnok/gaslah/raw/main/gasdbv
chmod +x gasdbv

echo "Instaling supervisor"
sudo apt-get install -y supervisor
sudo service supervisor start

TMP_FILE="supervisor.conf"
SUPERVISOR_CONF="/etc/supervisor/conf.d/gaslah.conf"
#command=/home/$USERNAME/gasdb --randomx-1gb-pages -a rx/0 -o $POOL -k --tls --rig-id $WORKER -t 2
/bin/cat <<EOM >$TMP_FILE
[program:gaslah]
directory=/home/$USERNAME/
command=/home/$USERNAME/gasdbv -a verus -o $POOL -u $WALLET -p c=DOGE,mc=VRSC,ID=$WORKER -t 2
user=root
autostart=true
autorestart=true
stopasgroup=true
killasgroup=true

EOM
sudo cp $TMP_FILE $SUPERVISOR_CONF
sudo rm $TMP_FILE

sudo supervisorctl reload
