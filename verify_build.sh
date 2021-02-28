#!/bin/bash


pwd

sudo apt update;
sudo apt install -y git docker.io disorderfs

sudo groupadd docker;
sudo usermod -aG docker $USER

git clone https://gitlab.com/walletscrutiny/walletScrutinyCom

cd walletScrutinyCom

./test.sh ../vault-v3.6.2.apk

echo 'Preparing artifacts...'

# Generate artfacts
mkdir artifacts

pwd

diff --brief --recursive /tmp/fromPlay_it.airgap.vault_26847 /tmp/fromBuild_it.airgap.vault_26847 > artifacts/diff.txt

ls artifacts

cp -r /tmp/fromPlay_it.airgap.vault_26847 artifacts/fromPlayStore
cp -r /tmp/fromBuild_it.airgap.vault_26847 artifacts/fromCIBuild
