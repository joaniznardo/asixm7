#!/usr/bin/env bash

sudo apt update
sudo cp /vagrant/PacketTracer70_64bit_linux.tar.gz /tmp
tar xvzf /tmp/PacketTracer70_64bit_linux.tar.gz
## desempaquetar
sed -i 's/read input/input=Y/g' PacketTracer70/install 
sed -i 's/read cont//g' PacketTracer70/install 
sed -i 's/read -p/echo/g' PacketTracer70/install 
sed -i 's/`dirname $_`/PacketTracer70/g' PacketTracer70/install 
PacketTracer70/install
