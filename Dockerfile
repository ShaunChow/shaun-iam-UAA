FROM frolvlad/alpine-java:jdk8-slim
MAINTAINER Shaun.Chow. S.C. <uranus-neptune@hotmail.com>

COPY ./uaa-bundled-1.0.0.BUILD-SNAPSHOT.jar /opt/spring-cloud/lib/
ENV TZ "Asia/Shanghai"
ENV LANG C.UTF-8

ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/opt/spring-cloud/lib/uaa-bundled-1.0.0.BUILD-SNAPSHOT.jar"]

EXPOSE 8080