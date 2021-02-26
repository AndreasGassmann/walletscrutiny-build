#!/bin/bash

sudo apt update;
sudo apt install -y git docker.io disorderfs

sudo groupadd docker;
sudo usermod -aG docker $USER

git clone https://gitlab.com/walletscrutiny/walletScrutinyCom

cd walletScrutinyCom

./test.sh ./vault/3.5.0.apk