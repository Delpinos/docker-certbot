FROM certbot/certbot

LABEL Author="Alef Bruno Delpino de Oliveira"
LABEL Email="alef@delpinos.com"

RUN apk add --no-cache bash

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENV CERTBOT_TEST_CERT="0"

ENTRYPOINT ["/entrypoint.sh"]