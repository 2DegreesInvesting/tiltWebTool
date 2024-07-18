side_bar <- function() {
  sidebar(
    selectChoices("indicator"),
    selectChoices("level"),
    selectChoices("weight", "(product level)"),
    passwordInput("password", "Password:"),
    actionButton("go", "Show data"),
    request_data()
  )
}

request_data <- function() {
  tags$p(link("download"), " under ", link("license"))
}
