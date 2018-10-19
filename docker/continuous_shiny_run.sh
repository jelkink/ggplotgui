#!/bin/sh

while true
do
    R -f /srv/shiny-server/docker/start_on_docker.R
    sleep 1
done
