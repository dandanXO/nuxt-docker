FROM node:11.13.0-alpine

# create destination directory
RUN mkdir -p /usr/src/nuxt-app
WORKDIR /usr/src/nuxt-app

# update and install dependency
RUN apk update && apk upgrade
RUN apk add git

# copy the app, note .dockerignore
# 雷點 11之後node會用到c++ py gpy 套件 需要先 安裝起來再刪掉
COPY . /usr/src/nuxt-app/
RUN apk add --no-cache --virtual .gyp \
        python \
        make \
        g++ \
    && npm install \
    && apk del .gyp

# build necessary, even if no static files are needed,
# since it builds the server as well
RUN npm run build

# docker對外開的port
# expose 5000 on container
EXPOSE 3000

# 環境變數設置方式
# set app serving to permissive / assigned
ENV NUXT_HOST=0.0.0.0
# set app port
ENV NUXT_PORT=3000

# start the app
CMD [ "npm", "start" ]