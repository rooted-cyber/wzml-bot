apt install sudo -y
cd /bin
if [ -e sudo ];then
cd ~
git clone https://github.com/rooted-cyber/anasty-bot
cd anas*
sudo apt install docker.io -y
sudo bash st.sh
printf "\n Deploying your bot...."
else
printf "\n Not found sudo\n"
fi
