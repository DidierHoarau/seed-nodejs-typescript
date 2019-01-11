# Builder
FROM node:10-alpine as builder

RUN apk add --no-cache bash git python perl alpine-sdk

COPY files /opt/app
COPY build.sh /opt/app/build.sh

WORKDIR /opt/app

RUN chmod +x ./build.sh && \
    ./build.sh


# Running
FROM node:alpine

COPY --from=builder /opt/app/dist /opt/app/dist
COPY --from=builder /opt/app/node_modules /opt/app/node_modules

WORKDIR /opt/app

CMD ["node", "dist/app.js"]
