echo
sudo apt update && sudo apt install docker.io

sleep 50

echo \
sudo systemctl start docker && sudo systemctl enable docker
sleep 5


echo\
sudo groupadd docker && sudo usermod -aG docker $USER && newgrp docker

echo
docker image pull [ghcr.io/blocksense-network/blocksense/reporter:v2](ghcr.io/blocksense-network/blocksense/reporter:v2)

#run the node
echo
mkdir -p brn/config
cd brn

echo
FEEDS_CONFIG_DIR="$(pwd)/config" \
REPORTER_CONFIG_DIR="$(pwd)/config" \
RUST_LOG="debug" \
docker run reporter
