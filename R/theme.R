theme <- function() {
  bs_theme(
    version = theme_version(),
    bg = get_theme("bg"),
    fg = get_theme("fg"),
    primary = get_theme("primary"),
    secondary = get_theme("secondary"),
    success = get_theme("success"),
    info = get_theme("info"),
    warning = get_theme("warning"),
    danger = get_theme("danger"),
    base_font = theme_font("base_font"),
    code_font = theme_font("code_font"),
    heading_font = theme_font("heading_font"),
    font_scale = get_theme("font_scale")
  )
}
