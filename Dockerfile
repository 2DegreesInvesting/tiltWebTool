FROM rocker/r-ver:4.4.1

COPY . /app

WORKDIR /app

RUN Rscript -e "install.packages('pak'); pak::pak()"

# Google Cloud Run likes this port
EXPOSE 8080

ENTRYPOINT ["Rscript","app.R"]

# You may test locally at http://0.0.0.0:8080/ with:
# docker build -t app .
# docker run --rm -d -p 8080:8080 app
