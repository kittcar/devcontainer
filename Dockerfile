FROM ubuntu:18.04
RUN apt update
RUN apt install -y x11-apps
RUN apt install -y xauth
WORKDIR /root
COPY ./entrypoint.sh / 
ENTRYPOINT ["/entrypoint.sh"]
