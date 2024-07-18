side_bar <- function() {
  sidebar(
    passwordInput("password", "Password", placeholder = placeholder()),
    selectChoices("indicator"),
    selectChoices("level"),
    selectChoices("weight", "(product level)"),
    request_data()
  )
}

request_data <- function() {
  tags$p(link("download"), " under ", link("license"))
}

placeholder <- function() {
  glue::glue("Shhh! Try '{ok()}'")
}

# FIXME
ok <- function() {
  "abc123"
}
