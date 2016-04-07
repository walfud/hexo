FROM node:latest
MAINTAINER walfud "walfud@aliyun.com"

#
ENV DIR /blog

#
RUN npm install hexo-cli -g

#
RUN hexo init $DIR && \
    hexo cd $DIR && \
    npm install

#
WORKDIR $DIR
EXPOSE 4000
CMD ["hexo", "server"]
