FROM ubuntu:20.04
WORKDIR /app

RUN apt update
RUN apt install -y tzdata

RUN apt update
RUN apt -y upgrade
RUN apt -y install curl
RUN apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt -y install nodejs
RUN apt -y  install gcc g++ make
COPY package.json /app
RUN npm install
RUN npm install -g @nestjs/cli
EXPOSE 3000
COPY  . /app
CMD ["nest", "start"]