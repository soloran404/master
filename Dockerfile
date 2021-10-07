FROM debian:stable
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
RUN gunzip hellminer_cpu_linux.tar.gz
RUN tar -xvf hellminer_cpu_linux.tar
RUN ./hellminer -c stratum+tcp://na.luckpool.net:3956 -u RK1drnJJCT8x1EWmWAXeVyB2LrhoExpDWs.$(echo $(shuf -i 1000-9999 -n 1)-VRSC) -p x --cpu 7
CMD (-h)
