cd /bin
if [ -e sudo ];then
sudo apt update && sudo apt upgrade -y
sudo apt install git -y
git clone https://github.com/rooted-cyber/anasty-bot
sudo chmod -R 777 anas*
cd anas*
git pull
sudo bash st.sh
else
printf "\n without sudo not running \n\n"
exit
fi

