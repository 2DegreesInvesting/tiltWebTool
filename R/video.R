video_card <- function() {
  shiny::tags$iframe(
    width = get_video("width"),
    height = get_video("height"),
    src = get_video("src"),
    title = "YouTube video player",
    frameborder = "0",
    allow = "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share",
    referrerpolicy = "strict-origin-when-cross-origin",
    allowfullscreen = TRUE
  )
}

get_video <- function(x) {
  config::get(x, file = config_path("video"))
}

iframe_card <- function(section) {
  x <- config::get(section, file = config_path("iframe"))
  header <- card_header(markdown(x$header))
  body <- iframe <- shiny::tags$iframe(
    width = x$width,
    height = x$height,
    src = x$src,
    title = "YouTube video player",
    frameborder = "0",
    allow = "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share",
    referrerpolicy = "strict-origin-when-cross-origin",
    allowfullscreen = TRUE
  )

  card(header, body)
}

