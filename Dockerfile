FROM mysterysd/wzmlx:latest
RUN git clone https://github.com/SilentDemonSD/WZML-X ap
COPY . .
RUN cp con* tok* ap
RUN cp tu /bin && chmod 777 /bin/tu
RUN cd ap && pip3 install -r requirements.txt && pip3 install yt-dlp==2023.10.13
RUN cd ap && bash start.sh
