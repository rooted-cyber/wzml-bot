FROM anasty17/mltb:latest
WORKDIR /maruf
RUN apt update
RUN apt upgrade -y
RUN apt install python3 python3-pip git virtualenv -y
RUN git clone https://github.com/anasty17/mirror-leech-telegram-bot
COPY . .
RUN cp config* token* m*t*t
RUN virtualenv venv 
RUN cd venv/bin;cp pip3 /bin;pip3 install --no-cache-dir -r /maruf/m*t*t/requirements.txt
RUN pip3 install python-dotenv;cd m*t;python3 -m bot && bash start.sh
