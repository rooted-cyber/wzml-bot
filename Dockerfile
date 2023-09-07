FROM anasty17/mltb:latest
WORKDIR /maruf
# Added the installation of git package using apt-get package manager
RUN apt-get update && apt-get install -y git
COPY . .
RUN git clone https://github.com/create-fork-repos/m-anasty-bot-all-tbt
# Fixed the path by changing '/maruf/m*t*t' to '/maruf/m-anasty-bot-all-tbt'
RUN cd /maruf/m-anasty-bot-all-tbt; git pull; printf "\n\n\n Installing req.\n\n\n"; pip3 install --no-cache-dir -r requirements.txt > /dev/null 2>&1
# Removed the '*' from 'm*t*t' for copying the files
RUN cp -rf config* token* /maruf/m-anasty-bot-all-tbt
RUN pip install --force-reinstall speedtest-cli
# Fixed the path by changing 'm*t*t' to 'm-anasty-bot-all-tbt'
RUN cd m-anasty-bot-all-tbt; printf "\n\n Now start \n\n"; bash start.sh
