link <- function(x) {
  text <- config::get(c(x, "text"), file = config_path("link"))
  href <- config::get(c(x, "link"), file = config_path("link"))
  tags$a(text, href = href)
}
