theme <- function() {
  bs_theme(
    version = theme_version(),
    bg = theme_color("bg"),
    fg = theme_color("fg"),
    primary = theme_color("primary"),
    secondary = theme_color("secondary"),
    success = theme_color("success"),
    info = theme_color("info"),
    warning = theme_color("warning"),
    danger = theme_color("danger"),
    base_font = theme_font("base_font"),
    code_font = theme_font("code_font"),
    heading_font = theme_font("heading_font")
  )
}
