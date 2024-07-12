FROM rocker/r-ver:latest

COPY /pushymatador /tiltWebtoolData

COPY . /app

WORKDIR /app

RUN Rscript -e "install.packages('pak'); pak::pak()"

# Google Cloud Run likes this port
EXPOSE 8080

ENTRYPOINT ["Rscript","app.R"]
