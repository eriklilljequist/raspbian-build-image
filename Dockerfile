# syntax=docker/dockerfile:1.2

FROM raspbian/stretch
LABEL maintainer="Erik Lilljequist"

# --force-yes
RUN sudo apt update -y
RUN sudo apt-get upgrade -y
RUN sudo apt install git python3-pip -y
