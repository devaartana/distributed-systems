#!/bin/bash

python3 peer_node.py \
		--name A --listen 0.0.0.0 5000 \
		--peers A@192.168.122.206:5000 B@192.168.122.143:5001  C@192.168.122.151:5002 D@192.168.122.23:5003 \
		--logger 192.168.122.49 9999 \
		--offset-ms 600 \
		--initiate-broadcast --msg "Hello from A"
