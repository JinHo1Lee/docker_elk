ARG ELK_VERSION

# https://github.com/elastic/elasticsearch-docker
FROM docker.elastic.co/kibana/kibana:"${ELK_VERSION}"

ARG ELK_VERSION
ENV ELK_VERSION=${ELK_VERSION}

ARG KIBANA_HOME=/usr/share/kibana
ENV KIBANA_HOME=${KIBANA_HOME}

ARG ELASTALERT_HOST
ENV ELASTALERT_HOST=${ELASTALERT_HOST}

ARG ELASTALERT_PORT
ENV ELASTALERT_PORT=${ELASTALERT_PORT}

WORKDIR ${KIBANA_HOME}

ARG ELASTALERT_URL=https://github.com/bitsensor/elastalert-kibana-plugin/releases/download/1.1.0/elastalert-kibana-plugin-1.1.0-"${ELK_VERSION}".zip
ENV ELASTALERT_URL=${ELASTALERT_URL}

RUN kibana-plugin install "${ELASTALERT_URL}"

COPY config/kibana.yml "${KIBANA_HOME}"/config/kibana.yml
