# Use the rocker/shiny base image
FROM rocker/shiny:latest

# Copy the R package into the container
COPY . /usr/local/src/tiltWebTool

# Set the working directory to the app's directory
WORKDIR /usr/local/src/tiltWebTool

# Install your R package
RUN R -e "install.packages('pak'); pak::pak('/usr/local/src/tiltWebTool')"

# Expose the port Shiny runs on
EXPOSE 3838

# Run your Shiny app
CMD ["R", "-e", "tiltWebTool::main()"]
