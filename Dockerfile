FROM rocker/shiny:latest

COPY . /srv/shiny-server/app

WORKDIR /srv/shiny-server/app

RUN Rscript -e "install.packages('pak'); pak::pak()"

# Port 8080 makes it easy to also deploy on Google Cloud Run
# docker build -t app .
# docker run --rm -ti -p 8080:8080 rocker/shiny
EXPOSE 8080

ENTRYPOINT ["Rscript","app.R"]
