sudo apt update && sudo apt upgrade -y
sudo apt install docker.io -y
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
