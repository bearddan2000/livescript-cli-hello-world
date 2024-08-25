FROM ubuntu:22.04

WORKDIR /workspace

RUN apt update && apt install -y npm

RUN npm i -g livescript

WORKDIR /code

COPY bin .
 
CMD "./run.sh"