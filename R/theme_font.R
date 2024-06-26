theme_font <- function(x) {
  file <- config_path("theme")

  main <- config::get(file = file, x)
  fallback <- config::get(file = file, paste0(x, "_fallback"))

  font_collection(font_google(main, local = TRUE), fallback)
}
