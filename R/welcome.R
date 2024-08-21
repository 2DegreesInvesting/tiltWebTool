welcome_text <- function(x) {
  text <- config::get(x, file = config_path(welcome_id()))
  lapply(text, \(x) shiny::markdown(x))
}

welcome_title <- function() {
  "welcoming page"
}
