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

## 單獨 docker file運行方式
```bash
# build image
docker build -t nuxt-docker .
# start docker
docker run -it -p 3000:3000 nuxt-docker
``` 

For detailed explanation on how things work, check out [Nuxt.js docs](https://nuxtjs.org).

## 用docker file 自動化建立image 和運行
如果要執行第二個docker contanier 個體 只要在 `socker-compose.yml` 中新增新的 service即可 

再到專案新增設定另外的dockerfile就可以了

內容寫在 socker-compose.yml中
```bash
# up 是啟動compose指令
# --build 建立客製化image 在本機
# -d 背景執行 
docker-compose up --build -d
```
