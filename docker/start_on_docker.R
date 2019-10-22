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
host <- getEnvStr("HOST", "172.17.0.2")

setwd('/srv/shiny-server/docker/')

# Although ggplotgui is installed when the image is created, this ensures it's always
# up-to-date with the latest github version.
devtools::install_github('jelkink/ggplotgui')

# Data is downloaded from the web server to ensure it is up to date.
data <- rio::import('http://www.joselkink.net/files/data/ESS_FPR.Rdata')

# Port and host can be set from outside, but does not appear necessary?
options(shiny.port = port)
options(shiny.host = host)

ggplotgui::ggplot_shiny(data)
