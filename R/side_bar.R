side_bar <- function() {
  sidebar(
    textInput("id", "Find companies", value = "."),
    selectChoices("level"),
    selectChoices("weight", "(product level)"),
    numericInput("n", "Number of rows", value = 10, min = 1, max = 50, step = 1),
    request_data()
  )
}

request_data <- function() {
  tags$p(link("download"), " under ", link("license"))
}
