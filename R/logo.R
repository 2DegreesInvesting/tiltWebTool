logo <- function() {
  src <- config::get(c("home", "logo"), file = config_path("link"))
  logo <- img(src = src, height = "30px", style = "vertical-align: middle;")

  href <- config::get(c("home", "link"), file = config_path("link"))

  tags$a(logo, href = href, class = "navbar-brand")
}
