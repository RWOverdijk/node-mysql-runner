FROM node:8-alpine
MAINTAINER RWOverdijk <r.w.overdijk@gmail.com>
ENV DEBIAN_FRONTEND noninteractive
RUN apk add mysql
COPY entrypoint.sh /
COPY build.sh /project/build
ENTRYPOINT ["/entrypoint.sh"]
