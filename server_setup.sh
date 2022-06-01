#!/bin/bash

sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

sudo systemctl unmask docker.service 
sudo systemctl unmask docker.socket
sudo systemctl start docker.service

sudo chmod 666 /var/run/docker.sock

sudo docker run --rm --pull always ghcr.io/porthole-ascend-cinnamon/mhddos_proxy --itarmy --debug