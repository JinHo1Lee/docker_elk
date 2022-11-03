ARG ELK_VERSION

# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash:${ELK_VERSION}

ARG LOGSTASH_HOME=/usr/share/logstash
ENV LOGSTASH_HOME=${LOGSTASH_HOME}

ARG ES_USER
ENV ES_USER=${ES_USER}

ARG ES_PASSWORD
ENV ES_PASSWORD=${ES_PASSWORD}

WORKDIR ${LOGSTASH_HOME}


USER logstash

COPY jdk1.8 ${LOGSTASH_HOME}
ENV JAVA_HOME=${LOGSTASH_HOME}/jdk1.8/bin

# Download Mysql Connect jar File
RUN curl -OL https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.19.tar.gz && \
    tar -zxf mysql-connector-java-8.0.19.tar.gz && \
    rm -f mysql-connector-java-8.0.19.tar.gz

ARG MYSQL_CONNECTOR_LIB=${LOGSTASH_HOME}/mysql-connector-java-8.0.19/mysql-connector-java-8.0.19.jar
ENV MYSQL_CONNECTOR_LIB=${MYSQL_CONNECTOR_LIB}

# Add your logstash plugins setup here
# Example: RUN logstash-plugin install analysis-icu


#RUN logstash-plugin install logstash-input-jdbc
#RUN logstash-plugin install logstash-filter-jdbc_streaming
