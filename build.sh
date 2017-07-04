#!/bin/bash
docker build -t deathrid3r747/unifi:v1 .
docker create --name=unifi -v /opt/docker/unifi:/config -e PGID=0 -e PUID=0  -p 8080:8080 -p 8081:8081 -p 8443:8443 -p 8843:8843 -p 8880:8880 --privileged deathrid3r747/unifi:v1
