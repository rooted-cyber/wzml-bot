FROM anasty17/mltb:latest
WORKDIR /maruf
RUN apt update
RUN apt upgrade -y
RUN apt install docker-compose-plugin -y
RUN apt install python3 python3-pip git virtualenv -y
RUN git clone https://github.com/anasty17/mirror-leech-telegram-bot
COPY . .
RUN cp config* token* m*t*t
RUN docker compose up
