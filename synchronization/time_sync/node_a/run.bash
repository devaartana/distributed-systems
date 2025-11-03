#!/bin/bash

python3 peer_node.py \
		--name A --listen 0.0.0.0 5000 \
		--peers A@localhost:5000 B@192.168.122.29:5001  C@:5002 D@192.168.122.198:5003 \
		--logger 192.168.122.52 9999 \
		--offset-ms 600 \
		--initiate-broadcast --msg "Hello from A"
