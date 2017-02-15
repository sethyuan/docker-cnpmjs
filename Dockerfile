FROM node:7

RUN npm install -g --build-from-source --unsafe-perm \
  --registry=https://registry.npm.taobao.org \
  --disturl=https://npm.taobao.org/mirrors/node \
  cnpmjs.org sqlite3

COPY config.json /root/.cnpmjs.org/

EXPOSE 7001 7002

ENTRYPOINT ["cnpmjs.org", "start"]
