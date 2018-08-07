#!/bin/sh

# This will exit with non zero exit status but it will still run it...
service ambari-agent start
tail -F /var/log/ambari-agent/ambari-agent.log
