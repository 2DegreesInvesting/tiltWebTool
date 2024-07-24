side_bar <- function() {
  sidebar(
    selectChoices("level"),
    selectChoices("weight", "(product level)"),
    request_data()
  )
}

request_data <- function() {
  tags$p(link("download"), " under ", link("license"))
}
