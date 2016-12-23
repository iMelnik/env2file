FROM alpine:latest

MAINTAINER Sergey Melnik <sergey.melnik@commercetools.de>

RUN apk add -U bash 

ADD makefiles.sh /

RUN chmod +x /makefiles.sh

CMD /makefiles.sh
