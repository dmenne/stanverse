FROM dmenne/stanversebase:latest

# This is the base package for dmenne/breathtestshiny
#
# The dependency from dmenne/stanversebase was used
# to allow the packages to be built on Docker Hub
# To build on your own system, combining the three 
# Dockerfiles stanversebase, stanverse and breathtestshiny
# should be fine

LABEL maintainer="dieter.menne@menne-biomed.de"


RUN install2.r --error --deps \
   rstan 

RUN install2.r --error \
   bayesplot \
   rstantools \
   shinystan \
   testthat \
   covr 

EXPOSE 3838
