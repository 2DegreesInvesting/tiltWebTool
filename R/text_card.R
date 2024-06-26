get_config <- function(value) {
  file <- fs::path_package("config.yml", package = "tiltWebTool")
  config::get(value, file = file)
}

text_card <- function(section) {
  x <- get_config(section)
  nm <- paste0("card_", names(x))
  fn <- mget(nm, envir = asNamespace("bslib"), inherits = FALSE)
  card(lapply(seq_along(x), \(i) fn[[i]](markdown(x[[i]]))))
}
