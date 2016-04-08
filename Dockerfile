FROM node:latest
MAINTAINER walfud "walfud@aliyun.com"

# https://hexo.io/docs/index.html
RUN npm install hexo-cli -g

#
WORKDIR $DIR
EXPOSE 4000
CMD ["hexo", "server"]
