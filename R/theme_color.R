theme_color <- function(x) {
  config::get(x, file = config_path("theme"))
}
