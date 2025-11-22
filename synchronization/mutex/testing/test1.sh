#!/bin/bash
#

# Single PUT to node 1
python3 ./kvclient.py --nodes 192.168.122.185:8001=1,192.168.122.160:8002=2,192.168.122.166:8003=3,192.168.122.159:8004=4,192.168.122.180:8005=5 cmd --node 1  "PUT color blue"


# GET from node 2
python3 ./kvclient.py  --nodes 192.168.122.185:8001=1,192.168.122.160:8002=2,192.168.122.166:8003=3,192.168.122.159:8004=4,192.168.122.180:8005=5 cmd --node 2   "GET color"


# Race two writers (great for no-mutex demo)
python3 ./kvclient.py --nodes 192.168.122.185:8001=1,192.168.122.160:8002=2,192.168.122.166:8003=3,192.168.122.159:8004=4,192.168.122.180:8005=5 race  "PUT color blue" "PUT color red"


# Read the key from ALL nodes after the race
python3 ./kvclient.py --nodes 192.168.122.185:8001=1,192.168.122.160:8002=2,192.168.122.166:8003=3,192.168.122.159:8004=4,192.168.122.180:8005=5  getall color




