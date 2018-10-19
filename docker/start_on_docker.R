setwd('/srv/shiny-server/ggplotgui/')

data <- rio::import('../docker/data/ESS_FPR.Rdata')

devtools::install_github('jelkink/ggplotgui')

ggplotgui::ggplot_shiny(data)
