video_card <- function() {
  shiny::tags$iframe(
    width = video("width"),
    height = video("height"),
    src = video("src"),
    title = "YouTube video player",
    frameborder = "0",
    allow = "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share",
    referrerpolicy = "strict-origin-when-cross-origin",
    allowfullscreen = TRUE
  )
}

video <- function(x) {
  config::get(x, file = config_path("video"))
}
