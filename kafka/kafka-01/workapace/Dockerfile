FROM anapsix/alpine-java
MAINTAINER zkw
COPY kafka_2.10-0.10.2.0 /kafka
VOLUME ["/kafka/config"]
ENV PATH ${PATH}:/kafka/bin
CMD ["/kafka/config/server.properties"]
ENTRYPOINT ["/kafka/bin/kafka-server-start.sh"]
