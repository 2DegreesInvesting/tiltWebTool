side_bar <- function() {
  sidebar(
    textInput(
      "name",
      "Match `company_name`",
      value = ".",
      placeholder = "To match all use dot ."
    ),
    selectChoices("level"),
    numericInput("n", "Number of rows", value = 10, min = 1, max = 50, step = 1),
    actionButton("go", "Go!"),
    request_data()
  )
}

request_data <- function() {
  tags$p(link("download"), " under ", link("license"))
}
