FROM alpine

RUN mkdir /app && apk update && apk add curl && curl --version

WORKDIR /app

COPY dusica.sh .

RUN chmod +x dusica.sh

CMD ["/app/dusica.sh"]

