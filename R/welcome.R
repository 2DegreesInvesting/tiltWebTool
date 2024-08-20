welcome_text <- function() {
  text <- config::get(file = config_path(welcome_id()))
  lapply(text, \(x) shiny::markdown(x))
}

welcome_title <- function() {
  "welcoming page"
}
