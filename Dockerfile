FROM node:latest
MAINTAINER walfud "walfud@aliyun.com"

#
ENV DIR /blog

# https://hexo.io/docs/index.html
RUN npm install hexo-cli -g

# https://hexo.io/docs/setup.html
RUN hexo init $DIR && \
    hexo cd $DIR && \
    npm install

#
WORKDIR $DIR
EXPOSE 4000
CMD ["hexo", "server"]
