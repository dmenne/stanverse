FROM rocker/shiny:latest

# This is the base package for dmenne/breathtestshiny

MAINTAINER Dieter Menne "dieter.menne@menne-biomed.de"

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
 libxml2-dev \ 
 libsqlite-dev \ 
 libmariadbd-dev \ 
 libmariadb-client-lgpl-dev \ 
 libpq-dev \
 libssh2-1-dev \
 libssl-dev  \
 libv8-3.14 # for V8

RUN install2.r --error \
    devtools \
    tidyverse \ 
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
    V8 \
    BH 

# For gitlab    
RUN install2.r --error \
    ggfittext\
    signal \
    multcomp 

RUN install2.r --error \
   rstan \
   rstantools \
   shinystan \
   testthat \
   brms \
   covr 

EXPOSE 3838
