# DOCKER-VERSION        1.3.2

FROM ubuntu:14.04
MAINTAINER Jeremy Welch, jm-welch@users.noreply.github.com

# Install nodejs
RUN apt-get update && \
  apt-get install -y wget && \
  wget -q -O - https://deb.nodesource.com/setup_0.12 | sudo bash - && \
  apt-get install -y build-essential nodejs && \
  rm -rf /var/lib/apt/lists/*

# Install hubot
ENV BOTDIR /opt/hubot
COPY hubot ${BOTDIR}/
WORKDIR ${BOTDIR}
RUN npm install

# Custom scripts
COPY scripts/*.coffee scripts/

CMD ["bin/hubot"]
