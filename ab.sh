apn() {
apt install sudo -y
apt install docker.io -y
}
apn > /dev/null 2>&1
cd /bin
if [ -e sudo ];then
cd ~
git clone https://github.com/rooted-cyber/anasty-bot
cd anas*
sudo bash st.sh
printf "\n Deploying your bot....\n"
else
printf "\n Not found sudo\n"
fi
