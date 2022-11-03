#!/bin/bash

# *********** Environment Variables***************
if [[ -z "$ES_HOST" ]]; then
  ES_HOST=elasticsearch01
fi

if [[ -z "$ES_PORT" ]]; then
  ES_PORT=9200
fi

if [[ -z "$ES_USER" ]]; then
  ES_USER=elastic
fi

if [[ -z "$ES_PASSWORD" ]]; then
  ES_PASSWORD=pwelastic
fi


ES_URL=http://${ES_HOST}:${ES_PORT}

# *********** Check if Elasticsearch is up ***************
until [[ "$(curl -s -o /dev/null --user ${ES_USER}:${ES_PASSWORD} -w "%{http_code}" $ES_URL)" == "200" ]]; do
    echo "Waiting for elasticsearch URI to be accessible.. ${ES_URL}"
    sleep 3
done

NODE_PATH=. BABEL_DISABLE_CACHE=1 node index.js | ./node_modules/.bin/bunyan -o short
