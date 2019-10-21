getEnvInt <- function(name, default = 0) {
  if (is.na(as.integer(Sys.getenv(name))))
    default
  else
    as.integer(Sys.getenv(name))
}

getEnvStr <- function(name, default = "") {
  if (Sys.getenv(name) == "")
    default
  else
    Sys.getenv(name)
}


port <- getEnvInt("PORT", 80)
host <- getEnvStr("HOST", "172.17.0.2")

setwd('/srv/shiny-server/docker/')

data <- rio::import('../docker/data/ESS_FPR.Rdata')

devtools::install_github('jelkink/ggplotgui')

options(shiny.port = port)
options(shiny.host = host)

ggplotgui::ggplot_shiny(data)
