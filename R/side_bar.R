side_bar <- function() {
  sidebar(
    passwordInput("password", "Show private data", placeholder = "Your password"),
    selectChoices("indicator"),
    selectChoices("level"),
    selectChoices("weight", "(product level)"),
    request_data()
  )
}

request_data <- function() {
  tags$p(link("download"), " under ", link("license"))
}
