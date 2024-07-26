side_bar <- function() {
  sidebar(
    textInput(
      "name",
      "Match `company_name`",
      value = ".",
      placeholder = "To match all use dot ."
    ),
    selectChoices("level"),
    sliderInput("n", "Number of rows", value = 10, min = 10, max = 100, step = 10),
    actionButton("go", "Go!"),
    request_data()
  )
}

request_data <- function() {
  tags$p(link("download"), " under ", link("license"))
}
