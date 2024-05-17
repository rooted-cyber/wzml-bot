FROM theteamultroid/ultroid:main
RUN apt update
RUN apt upgrade -y
RUN apt install python3 python3-pip git -y
RUN git clone https://github.com/anasty17/mirror-leech-telegram-bot
COPY . .
RUN cp config* token* m*t*t
RUN pip3 install --no-cache-dir -r requirements.txt
RUN bash start.sh
