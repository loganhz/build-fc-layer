FROM aliyunfc/runtime-nodejs14:build-latest

RUN mkdir -p /tmp/nodejs
COPY package.json /tmp/nodejs/package.json
RUN cd /tmp/nodejs && npm install --only=prod
RUN cd /tmp
WORKDIR /tmp
RUN zip -r layer ./*