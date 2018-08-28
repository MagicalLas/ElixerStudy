FROM ubuntu:16.04

MAINTAINER Las-Wonho haho6629@gmail.com

COPY Source /source

RUN apt-get update\
  && apt-get install -y wget

RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb

RUN apt-get update

RUN apt-get install -y esl-erlang

RUN apt-get install -y elixir

RUN apt-get install -y locales

RUN locale-gen "en_US.UTF-8"

WORKDIR .

EXPOSE 4567

VOLUME 6644
