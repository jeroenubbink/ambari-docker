FROM debian:stable

MAINTAINER Jeroen Ubbink version: 0.1.3

RUN apt-get update && apt-get upgrade -y && apt-get install -y curl
RUN curl -o /etc/apt/sources.list.d/ambari.list http://public-repo-1.hortonworks.com/ambari/debian9/2.x/updates/2.7.0.0/ambari.list

RUN apt-get --allow-unauthenticated update && apt-get install -y --allow-unauthenticated ambari-server && apt-get clean
RUN ambari-server setup -s -v

EXPOSE 8080
EXPOSE 8440
EXPOSE 8441

HEALTHCHECK CMD curl --fail http://localhost:8080/ || exit 1

CMD service ambari-server start && tail -F /var/log/ambari-server/ambari-server.log
