FROM ubuntu:17.04

RUN apt-get update
RUN apt-get install unoconv -y
RUN mkdir /work
RUN apt-get install gv -y
WORKDIR /work

