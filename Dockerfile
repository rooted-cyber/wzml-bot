FROM anasty17/mltb:dev

WORKDIR /maruf

RUN apt install git -y
RUN git clone https://github.com/rooted-cyber/anasty-bot
RUN git clone https://www.github.com/anasty17/mirror-leech-telegram-bot
RUN cd /maruf/m*t*t;pip3 install --no-cache-dir -r requirements.txt > /dev/null 2>&1
RUN cp -rf ana*t/config* ana*t/token* m*t*t
RUN cd m*t*t;bash start.sh > /dev/null 2>&1
FROM programmingerror/ultroid:b0.1
FROM ubuntu:${VERSION:-latest}
FROM theteamultroid/ultroid:main
CMD [ "bash" "m*t*t/start*" ]
