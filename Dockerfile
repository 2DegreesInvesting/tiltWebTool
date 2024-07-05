# Use the R base image from the Rocker project
FROM rocker/r-ver:latest

# Install necessary R packages including shiny, devtools, and pkgload
RUN R -e "install.packages(c('shiny', 'devtools', 'pkgload', 'rmarkdown'), repos='https://cloud.r-project.org/')"

# Copy your R package into the Docker image
COPY . /usr/local/src/tiltWebTool

# Set the working directory to where you've copied your app
WORKDIR /usr/local/src/tiltWebTool

# Install your R package using devtools
RUN R -e "install.packages('pak'); pak::pak()"

# Expose the port your app will run on
EXPOSE 3838

# Use pkgload to load your package and then run the main function to start the app
CMD ["R", "-e", "pkgload::load_all('/usr/local/src/tiltWebTool'); main()"]
