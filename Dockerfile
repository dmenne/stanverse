FROM rocker/tidyverse:latest

# This is a base package for dmenne/breathtestshiny

MAINTAINER Dieter Menne "dieter.menne@menne-biomed.de"

RUN apt-get update && apt-get install -y  \
  libssl-dev \
  sudo \ 
  gdebi-core \ 
#  pandoc \ 
#  pandoc-citeproc \ 
  libcurl4-gnutls-dev \
  libcairo2-dev \
  libgl1-mesa-dev \
  libglu1-mesa-dev \
  libxt-dev 
#  libmariadb-client-lgpl-dev \
#  libmagick++-dev  
  
RUN install2.r --error \
    PKI \
    tidyverse \
    dplyr \
#    ggplot2 \ 
    devtools  \
    formatR \ 
    remotes \ 
    selectr \ 
    caTools \
    DT \
    dygraphs \
    gtools \ 
    shiny  \
    shinyjs \ 
    shinythemes \ 
    shinyBS \ 
    shinyAce \
    shinycssloaders \
    bayesplot \
    colourpicker \
    xts \
    rsconnect \
    BH \
    readr \
    haven \
    rstan  

