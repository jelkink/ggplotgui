FROM rocker/shiny:latest
COPY . /srv/shiny-server/docker
RUN sudo apt-get update
RUN sudo apt-get upgrade -y
RUN sudo apt-get install -y libssl-dev xdg-utils net-tools curl vim
RUN sudo R -e "install.packages(c('shiny', 'dplyr', 'plotly', 'rmarkdown', 'ggplot2', 'readxl', 'haven', 'rio', 'stringr', 'readr', 'devtools'))"
RUN chmod +x /srv/shiny-server/docker/continuous_shiny_run.sh
EXPOSE 80

CMD /srv/shiny-server/docker/continuous_shiny_run.sh
# CMD bash
