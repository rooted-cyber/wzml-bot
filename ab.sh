apn() {
apt install sudo git -y
apt install docker.io -y
}
command -v docker || apn
sudo docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
