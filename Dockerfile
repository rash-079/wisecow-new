FROM ubuntu:24.04
ENV DEBIAN_FRONTEND=noneinteractive 

RUN apt-get update && apt-get install -y fortune-mod cowsay netcat-openbsd && apt-get clean

WORKDIR /APP
COPY wisecow.sh .

RUN chmod +x wisecow.sh

ENV PATH="/usr/games:${PATH}"

EXPOSE 4499 

CMD ["./wisecow.sh"]