#!/bin/sh

# Although ggplotgui is installed when the image is created, this ensures it's always
# up-to-date with the latest github version.
# R -e 'devtools::install_github("jelkink/ggplotgui")'

while true
do
    R -f /srv/shiny-server/docker/start_on_docker.R
    sleep 1
done
