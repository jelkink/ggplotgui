setwd('/srv/shiny-server/docker/')

data <- rio::import('../docker/data/ESS_FPR.Rdata')

devtools::install_github('jelkink/ggplotgui')

options(shiny.port = 80)
options(shiny.host = "172.17.0.2")

ggplotgui::ggplot_shiny(data)
