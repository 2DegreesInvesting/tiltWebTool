iframe_card <- function(section) {
  x <- config::get(section, file = config_path("iframe"))

  header <- card_header(markdown(x$header))
  body <- tags$iframe(
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

iframe_section <- function(section) {
  x <- config::get(section, file = config_path("iframe"))

  body <- tags$iframe(
    width = x$width,
    height = x$height,
    src = x$src,
    title = "YouTube video player",
    frameborder = "0",
    allow = "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share",
    referrerpolicy = "strict-origin-when-cross-origin",
    allowfullscreen = TRUE
  )

  list(
    header = x$header,
    body = body
  )
}
