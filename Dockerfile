FROM alpine:3.8

RUN apk update && \
    apk add ghostscript && \
   mkdir /pdf

WORKDIR /

CMD ["ghostscript", "--version"]
