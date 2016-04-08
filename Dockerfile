FROM node:latest
MAINTAINER walfud "walfud@aliyun.com"

# https://hexo.io/docs/index.html
RUN npm install hexo-cli -g

#
EXPOSE 4000
CMD cd / && \
    hexo init blog && \
    cd blog && \
    npm install && \
    hexo server
