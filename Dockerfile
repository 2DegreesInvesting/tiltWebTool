FROM rocker/r-ver:latest

COPY . /srv/shiny-server/app

WORKDIR /srv/shiny-server/app

RUN Rscript -e "install.packages('pak'); pak::pak()"

ENTRYPOINT ["Rscript","app.R"]
