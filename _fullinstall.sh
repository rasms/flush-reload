#!/bin/bash

FLURE=$HOME/flush-reload-master/
GPG=$HOME/flush-reload-master/build_gpg/

sudo apt-get update
sudo apt-get install make gcc unzip -y

wget https://github.com/rleissner/flush-reload/archive/master.zip
unzip master.zip

cd ${GPG}
./install_locally.sh
${GPG}gnupg-1.4.12/bin/gpg --import ${FLURE}key/secret.key

cd ${FLURE}
make


exit 0
