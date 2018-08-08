# ambari-docker

ambari-docker provides you with an example of an up-to-date (2018-08) Ambari Server and agent
version 2.7.0.0 running inside an up-to-date Debian (9, Stretch). Dockerfiles are provided
and a simple example setup can be run using:

```
$ docker-compose up
```

Then pointing your browser to http://localhost:8080 and you should be able to register
hosts *ambari-agent-1* and *ambari-agent-2*. You can add more hosts by adding them to
`docker-compose.yml` or if you feel like it you can add some more advanced features by modifying
the `Dockerfile`s inside `ambari-agent/` and `ambari-server/`
