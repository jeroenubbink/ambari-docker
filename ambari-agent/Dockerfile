FROM debian:stable

MAINTAINER Jeroen Ubbink version: 0.1

RUN apt-get update && apt-get upgrade -y && apt-get install -y curl
RUN curl -o /etc/apt/sources.list.d/ambari.list http://public-repo-1.hortonworks.com/ambari/debian9/2.x/updates/2.7.0.0/ambari.list

RUN apt-get --allow-unauthenticated update && apt-get install -y --allow-unauthenticated ambari-agent && apt-get clean
COPY provisioning/etc/ambari-agent/conf/ambari-agent.ini /etc/ambari-agent/conf/ambari-agent.ini
COPY provisioning/start.sh /start.sh
RUN chmod +x /start.sh
#
# EXPOSE 8080
#
# HEALTHCHECK CMD curl --fail http://localhost:8080/ || exit 1
#
CMD /start.sh
