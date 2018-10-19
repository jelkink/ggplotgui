setwd('/srv/shiny-server/docker/')

data <- rio::import('../docker/data/ESS_FPR.Rdata')

devtools::install_github('jelkink/ggplotgui')

ggplotgui::ggplot_shiny(data)
