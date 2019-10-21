FROM rocker/shiny:latest
COPY . /srv/shiny-server/docker

RUN sudo apt-get update
RUN sudo apt-get upgrade -y
RUN sudo apt-get install -y libssl-dev xdg-utils net-tools curl vim
RUN sudo R -e "install.packages(c('shiny', 'dplyr', 'plotly', 'rmarkdown', 'ggplot2', 'readxl', 'haven', 'rio', 'stringr', 'readr', 'devtools'))"
RUN chmod +x /srv/shiny-server/docker/continuous_shiny_run.sh

EXPOSE 8080
EXPOSE 8081
EXPOSE 8082
EXPOSE 8083
EXPOSE 8084
EXPOSE 8085
EXPOSE 8086
EXPOSE 8087

ENV PORT=8080
CMD /srv/shiny-server/docker/continuous_shiny_run.sh
ENV PORT=8081
CMD /srv/shiny-server/docker/continuous_shiny_run.sh
ENV PORT=8082
CMD /srv/shiny-server/docker/continuous_shiny_run.sh
ENV PORT=8083
CMD /srv/shiny-server/docker/continuous_shiny_run.sh
ENV PORT=8084
CMD /srv/shiny-server/docker/continuous_shiny_run.sh
ENV PORT=8085
CMD /srv/shiny-server/docker/continuous_shiny_run.sh
ENV PORT=8086
CMD /srv/shiny-server/docker/continuous_shiny_run.sh
ENV PORT=8087
CMD /srv/shiny-server/docker/continuous_shiny_run.sh
