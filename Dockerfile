FROM anasty17/mltb:latest
RUN apt update
RUN apt upgrade -y
RUN apt install python3 python3-pip git virtualenv -y
RUN git clone https://github.com/anasty17/mirror-leech-telegram-bot
COPY . .
RUN cp config* token* m*t*t
RUN virtualenv venv && cd venv/bin;./pip3 install --no-cache-dir -r requirements.txt
RUN bash start.sh
