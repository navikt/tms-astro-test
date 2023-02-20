FROM node:16-alpine

WORKDIR usr/src/app

CMD ["node", "./server/entry.mjs"]

ENV PORT=8080
EXPOSE $PORT