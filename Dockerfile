FROM ubuntu:kinetic

# basic apt-get stuff
RUN apt-get update \
  && apt-get -y upgrade \
  && apt-get install -y build-essential zlib1g-dev wget \
  && apt-get clean && apt-get purge \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# apt things I use
RUN apt update \
  && apt -y upgrade \
  && apt install -y tree git python3 curl

# aliases
RUN echo 'alias python="python3"' >> ~/.bashrc \
  && echo 'alias py="python3"' >> ~/.bashrc \
  && echo 'alias l="ls -Glaph"' >> ~/.bashrc \
  && echo 'alias ll="ls -Glaph"' >> ~/.bashrc


WORKDIR /home

CMD /bin/bash
