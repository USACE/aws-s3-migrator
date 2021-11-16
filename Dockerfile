FROM alpine:3.11

RUN apk --no-cache add \
      bash \
      py-pip \
      python &&\
    pip install --upgrade \
      pip \
      awscli



RUN mkdir /app
WORKDIR /app

ADD sync.sh /app
RUN chmod +x /app/sync.sh

CMD /bin/sh -c /app/sync.sh