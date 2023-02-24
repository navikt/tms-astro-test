FROM node:18-alpine

WORKDIR usr/src/app
COPY . .

RUN npm ci
RUN npm run build

ENV HOST=0.0.0.0
ENV PORT=3000

CMD ["node", "./dist/server/entry.mjs"]

EXPOSE $PORT