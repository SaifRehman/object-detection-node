FROM ubuntu:16.04
USER root
COPY . .
RUN apt-get update
RUN apt-get -y install curl gnupg git cmake build-essential
RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN apt-get -y install nodejs
RUN npm install
CMD "npm start"