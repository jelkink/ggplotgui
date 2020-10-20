# Helper functions for reading environment variables
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

# Read environment variables for port and host, but default should be OK when only
# one Shiny script per docker container.
port <- getEnvInt("PORT", 80)
host <- "0.0.0.0" # getEnvStr("HOST", "172.17.0.0")

setwd('/srv/shiny-server/docker/')

# Data is downloaded from the web server to ensure it is up to date.
data <- rio::import('http://www.joselkink.net/files/data/INES_FPR.Rdata')

# Port and host can be set from outside, but does not appear necessary?
options(shiny.port = port)
options(shiny.host = host)

ggplotgui::ggplot_shiny(data)
