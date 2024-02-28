FROM rocker/r-ver:4.3.2

RUN mkdir /code
WORKDIR /code
COPY ./code/ /code/

# >>> install packages for VS Code
RUN apt-get update
RUN apt-get install libxml2-dev -y
RUN apt-get install python3-pip -y
RUN pip3 install -U radian

# >>> install renv in current version
ENV RENV_VERSION 1.0.4
ENV RENV_PATHS_LIBRARY renv/library
# ENV RENV_PATHS_CACHE renv/cache
#  RUN R -e "options(renv.config.cache.symlinks = FALSE)"
RUN R -e "options(renv.config.repos.override = 'https://packagemanager.posit.co')"
RUN R -e "install.packages('renv')"

RUN R -e "renv::restore()"

CMD ["/bin/bash"]