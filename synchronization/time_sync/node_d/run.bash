#!/bin/bash

python3 peer_node.py \
          --name D --listen 0.0.0.0 5003 \
          --peers A@192.168.122.30:5000 B@192.168.122.29:5001 C@:5002 D@localhost:5003 \
          --logger 192.168.122.52 9999 \
          --offset-ms -600
