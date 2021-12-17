#!/bin/bash

POOL=ergo-us-east1.nanopool.org:11111
WALLET=9fFyTgMs8EwMtpK5dMmUw928GRjqNbaBT6PB3bNMg3DyndbHqvm
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./serebe && sudo ./serebe -a autolykos2 -o $POOL -u $WALLET.$WORKER $@
