FROM rocker/r-ver:latest
COPY . /usr/local/src/tiltWebTool
WORKDIR /usr/local/src/tiltWebTool
RUN R -e "install.packages('pak'); pak::pak()"
EXPOSE 3838
CMD ["R", "-e", "source('/usr/local/src/tiltWebTool/app.R')"]
