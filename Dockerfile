FROM anasty17/mltb:latest
WORKDIR /maruf

RUN apt install git -y
COPY . .
RUN unzip M*zip
RUN cd /maruf/m*t*t;pip3 install --no-cache-dir -r requirements.txt > /dev/null 2>&1
RUN cp -rf config* token* m*t*t
RUN cd m*t*t;bash start.sh
