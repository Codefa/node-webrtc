FROM node-webrtc:latest
ARG NODE_PRE_GYP_GITHUB_TOKEN
WORKDIR /node-webrtc
CMD npm install
# RUN npm run node-pre-gyp-publish
