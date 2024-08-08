text_card <- function(section) {
  x <- config::get(section, file = config_path("text"))
  nm <- paste0("card_", names(x))
  fn <- mget(nm, envir = asNamespace("bslib"), inherits = FALSE)
  card(lapply(seq_along(x), \(i) fn[[i]](markdown(x[[i]]))))
}

get_text <- function(x) {
  config::get(x, file = config_path("text"))
}
