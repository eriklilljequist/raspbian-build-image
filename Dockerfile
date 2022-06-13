# syntax=docker/dockerfile:1.2

# FROM raspbian/stretch
FROM arm32v7/python:3.9-slim-bullseye
LABEL maintainer="Erik Lilljequist"
# SHELL ["/bin/bash", "-c"]

RUN apt update -y
RUN apt install -y cmake g++ make
RUN apt install -y git wget curl 
RUN apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev openssl bzip2
RUN python -V


# RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $HOME/.bashrc
# RUN echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> $HOME/.bashrc
# RUN echo 'eval "$(pyenv init -)"' >> $HOME/.bashrc
# RUN echo 'export python_version=3.9.2' >> $HOME/.bashrc


# --force-yes
# RUN echo 'deb http://http.us.debian.org/debian/ testing non-free contrib main' >> /etc/apt/sources.list



# #Get pyenv and activate python 3.9
# RUN curl https://pyenv.run | bash
# RUN . $HOME/.bashrc && pyenv install -v $python_version -s && pyenv global $python_version

# # Serverless framework tries to invoke python 3.9
# RUN alias python3.9="python"