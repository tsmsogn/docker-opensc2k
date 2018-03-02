# Base system is the LTS version of Ubuntu.
FROM ubuntu:14.04

# Download and install everything.
RUN apt-get --yes update
RUN apt-get --yes upgrade
RUN apt-get --yes install curl git
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN git clone https://github.com/rage8885/OpenSC2K.git

# Load in all of our config files.
ADD ./scripts/start /start

EXPOSE 3000
CMD ["/start"]
