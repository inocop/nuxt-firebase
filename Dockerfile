FROM node:8.12-alpine

MAINTAINER inocop

RUN npm install -g create-nuxt-app@2.1.1 \
                   firebase-tools@~6.0.0

CMD tail -f /dev/null
WORKDIR /var/src