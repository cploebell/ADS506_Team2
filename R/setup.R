# ======== Install Missing Packages ========

required_packages <- c(
  "fpp3", "remotes", "cdcfluview", 
  "tidyverse", "lubridate"
)

for(p in required_packages){
  if(!requireNamespace(p, quietly = TRUE)){
    install.packages(p)
  }
}

# Install cdcfluview from GitHub if missing
if(!requireNamespace("cdcfluview", quietly = TRUE)){
  remotes::install_github("hrbrmstr/cdcfluview")
}

# ======== Load Libraries ========

library(fpp3)
library(cdcfluview)
library(tidyverse)
library(lubridate)
