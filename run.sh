#!/bin/sh -f
ARCHITECTURE=$(uname -m)

if [ "$ARCHITECTURE" = "x86_64" ];
  then
    DOCKER_IMAGE=ansi/mosquitto:latest
  else
    DOCKER_IMAGE=openenergy/rpi-mosquitto:latest
fi

docker run -p 1883:1883 \
           --restart="always" \
           --name mqtt-broker \
           -d \
           ${DOCKER_IMAGE}
