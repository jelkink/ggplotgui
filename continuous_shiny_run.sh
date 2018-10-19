#!/bin/sh

while true
do
    R -f /srv/shiny-server/ggplotgui/R/start_on_docker.R
    sleep 1
done
