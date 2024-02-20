apn() {
apt install sudo -y
apt install docker.io -y
}
apn > /dev/null 2>&1
dpb() {
cd /bin
if [ -e sudo ];then
cd ~
git clone https://github.com/rooted-cyber/anasty-bot
cd anas*
printf "\n Deploying your bot....\n"
sudo bash st.sh
printf "\n Deployed your bot....\n"
else
printf "\n Not found sudo\n"
fi
}
chs() {
cd /bin
if [ -e sudo ];then
cd ~/anasty*
printf "\n Deploying your bot....\n"
sudo bash st.sh
printf "\n Deployed your bot....\n"
fi
}
if [ -e anasty-bot ];then
cd anasty*
chs
else
dpb
fi
