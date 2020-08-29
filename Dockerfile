FROM alpine:3.8

LABEL maintainer="kuniiskywalker <kuniiskywalker@gmail.com>"

RUN apk update && \
    apk add ghostscript && \
   mkdir /pdf

WORKDIR /

CMD ["ghostscript", "--version"]
