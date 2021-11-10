FROM node:16

RUN apt-get -y update
RUN apt-get -y install cmake python2 git python3-pkg-resources python-setuptools

WORKDIR /
RUN git clone https://github.com/koush/node-webrtc.git
WORKDIR /node-webrtc
ENV SKIP_DOWNLOAD=true
# RUN rm node_modules/.bin/python
RUN mkdir -p node_modules/.bin/
RUN ln -s $(which python2) node_modules/.bin/python

ARG NODE_PRE_GYP_GITHUB_TOKEN
WORKDIR /node-webrtc
COPY ./install-and-publish.sh ./install-and-publish.sh
CMD ./install-and-publish.sh
