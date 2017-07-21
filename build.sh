#!/bin/bash
docker build -t deathrid3r747/unifi .
docker kill unifi
docker rm unifi
docker create --name=unifi --restart=always -v /opt/docker/unifi:/usr/lib/unifi/data -e PGID=0 -e PUID=0  -p 8080:8080 -p 8081:8081 -p 8443:8443 -p 8843:8843 -p 8880:8880 --privileged deathrid3r747/unifi
