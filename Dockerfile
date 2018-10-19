FROM rocker/shiny:latest
COPY . /srv/shiny-server/ggplotgui
COPY data/ESS_FPR.Rdata /srv/shiny-server/ggplotgui/
RUN sudo apt-get install -y libssl-dev
RUN sudo R -e "install.packages(c('shiny', 'dplyr', 'plotly', 'rmarkdown', 'ggplot2', 'readxl', 'haven', 'rio', 'stringr', 'readr', 'devtools'))"
RUN chmod +x /srv/shiny-server/ggplotgui/continuous_shiny_run.sh
EXPOSE 3838

CMD /srv/shiny-server/ggplotgui/continuous_shiny_run.sh
