#!/bin/bash

: ${SERVER_ADDRESS=localhost}
: ${IL_PORT=8080}
: ${TRUSTCHAIN=""}
: ${CERT_LOCATION=/etc/nginx/certs/sedish.net.crt}
: ${KEY_LOCATION=/etc/nginx/certs/sedish.net.key}
: ${ILR_HOST=localhost}

export SERVER_ADDRESS
export IL_PORT
export CERT_LOCATION
export KEY_LOCATION
export TRUSTCHAIN
export ILR_HOST

/utils/replace-vars /var/www/html/config/default.json
/utils/replace-vars /etc/nginx/sites-available/default

echo "Starting nginx"

nginx
