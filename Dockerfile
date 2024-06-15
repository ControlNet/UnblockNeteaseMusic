FROM node:lts-alpine

RUN set -ex && mkdir /app
RUN apk add --no-cache python3 youtube-dl
RUN wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp && chmod a+rx /usr/local/bin/yt-dlp

COPY ./precompiled/* /app/
COPY ./*.crt /app/
COPY ./*.key /app/

ENV SIGN_CERT /app/server.crt
ENV SIGN_KEY /app/server.key
ENV NODE_ENV production

WORKDIR /app

EXPOSE 8080 8081

ENV DEVELOPMENT=false ENABLE_FLAC=true ENABLE_LOCAL_VIP=true NO_CACHE=false SIGN_KEY="./server.key" SIGN_CERT="./server.crt"

ENTRYPOINT ["node", "app.js"]
