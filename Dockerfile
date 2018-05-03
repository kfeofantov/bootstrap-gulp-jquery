FROM node:9-alpine
MAINTAINER Konstantin Feofantov <kfeofantov@gmail.com>

WORKDIR /site
COPY . .

RUN rm -rf node_module
RUN npm cache clean --force

RUN npm install yarn
RUN npm install gulp

RUN yarn
