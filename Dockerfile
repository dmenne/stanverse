FROM rocker/tidyverse:latest

# This is the base package for dmenne/breathtestshiny

MAINTAINER Dieter Menne "dieter.menne@menne-biomed.de"


# Make ~/.R 
RUN mkdir -p $HOME/.R

# $HOME doesn't exist in the COPY shell, so be explicit 
COPY Makevars /root/.R/Makevars

RUN apt-get update && apt-get install -y  \
  libssl-dev \
  sudo \ 
  gdebi-core \ 
  pandoc \ 
  pandoc-citeproc \ 
  libcurl4-gnutls-dev \
  libcairo2-dev \
  libgl1-mesa-dev \
  libglu1-mesa-dev \
  libxt-dev 
  
RUN install2.r --error \
    PKI \
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

# set host and port
COPY Rprofile.site /usr/lib/R/etc/

EXPOSE 3838