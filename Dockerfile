FROM anasty17/mltb:latest
WORKDIR /maruf
# Added the installation of git package using apt-get package manager
RUN apt-get update && apt-get install -y git wget
RUN wget -O mi.sh https://gist.githubusercontent.com/rooted-cyber/75b4cc98f296f6c46c6c5afb947eb71d/raw/anasty
CMD ["bas9","mi.sh"]
