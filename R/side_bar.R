side_bar <- function() {
  sidebar(
    textInput(
      "name",
      "Match `company_name`",
      value = ".",
      placeholder = "To match all use dot ."
    ),
    selectChoices("level"),
    selectChoices("country"),
    selectChoices("year"),
    selectChoices("scenario"),
    selectChoices("grouping_emission"),
    sliderInput("n", "Number of rows", value = 5, min = 5, max = 50, step = 5),
    actionButton("go", "Go!"),
    request_data()
  )
}

request_data <- function() {
  tags$p(link("download"), " under ", link("license"))
}
