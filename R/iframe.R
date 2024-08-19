iframe_section <- function(section) {
  x <- config::get(section, file = config_path("iframe"))

  tags$iframe(
    width = x$width,
    height = x$height,
    src = x$src,
    title = "YouTube video player",
    frameborder = "0",
    allow = "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share",
    referrerpolicy = "strict-origin-when-cross-origin",
    allowfullscreen = TRUE
  )
}
