FROM debian:stable
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN lscpu
CMD (-h)
