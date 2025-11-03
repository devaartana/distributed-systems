#!/bin/bash

python3 peer_node.py \
		--name B --listen 0.0.0.0 5001 \
		--peers A@192.168.122.30:5000 B@localhost:5001 @:5002 D@192.168.122.198:5003 \
		--logger 192.168.122.52 9999 \
		--offset-ms -600
