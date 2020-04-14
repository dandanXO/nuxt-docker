# docker_nuxt_test

> My phenomenal Nuxt.js project

## Build Setup

``` bash
# install dependencies
$ npm run install

# serve with hot reload at localhost:3000
$ npm run dev

# build for production and launch server
$ npm run build
$ npm run start

# generate static project
$ npm run generate
```

## On docker
```bash
# build image
docker build -t nuxt-docker .
# start docker
docker run -it -p 3000:3000 nuxt-docker
``` 

For detailed explanation on how things work, check out [Nuxt.js docs](https://nuxtjs.org).
