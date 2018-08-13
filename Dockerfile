FROM rocker/shiny:latest

# This is the base package for dmenne/breathtestshiny

MAINTAINER Dieter Menne "dieter.menne@menne-biomed.de"

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
 libxml2-dev \ 
 libsqlite-dev \ 
 libmariadbd-dev \ 
 libmariadb-client-lgpl-dev \ 
 libpq-dev \
 libssh2-1-dev 

RUN install2.r --error \
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
    BH \
    haven 

RUN install2.r --error  readr
    
RUN install2.r --error rstan


EXPOSE 3838