ARG ELK_VERSION

# https://github.com/elastic/elasticsearch-docker
FROM docker.elastic.co/elasticsearch/elasticsearch:${ELK_VERSION}

ARG ELK_VERSION
ENV ELK_VERSION=${ELK_VERSION}

ARG ELASTIC_SEARCH_HOME=/usr/share/elasticsearch
ENV ELASTIC_SEARCH_HOME=${ELASTIC_SEARCH_HOME}

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu

COPY config/elasticsearch.yml ${ELASTIC_SEARCH_HOME}/config/elasticsearch.yml
