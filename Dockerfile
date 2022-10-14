FROM anasty17/mltb:latest

WORKDIR /maruf

RUN apt install wget -y
RUN git clone https://www.github.com/anasty17/mirror-leech-telegram-bot
RUN cd /maruf/m*t*t;pip3 install --no-cache-dir -r requirements.txt
RUN cd m*t*t;wget https://raw.githubusercontent.com/rooted-cyber/anasty-bot/main/config.env
RUN cd m*t*t;bash start.sh
