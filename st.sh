sudo apt install docker.io -y
sudo docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
