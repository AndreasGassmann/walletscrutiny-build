#!/bin/bash

sudo apt update;
sudo apt install -y git docker.io disorderfs

sudo groupadd docker;
sudo usermod -aG docker $USER

git clone https://gitlab.com/walletscrutiny/walletScrutinyCom

cd walletScrutinyCom

./test.sh ../vault-v3.7.0-28519.apk

echo 'Preparing artifacts...'

# Generate artfacts
mkdir artifacts

diff --brief --recursive /tmp/fromPlay_it.airgap.vault_28519 /tmp/fromBuild_it.airgap.vault_28519 > artifacts/diff.txt

cp -r /tmp/fromPlay_it.airgap.vault_28519 artifacts/fromPlayStore
cp -r /tmp/fromBuild_it.airgap.vault_28519 artifacts/fromCIBuild

echo 'Diff and files copied to "artifacts" folder'

cd artifacts

pwd
ls

