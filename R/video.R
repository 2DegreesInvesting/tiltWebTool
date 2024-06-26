video_card <- function() {
  shiny::tags$iframe(
    width = "560",
    height = "315",
    src = "https://www.youtube.com/embed/DQUupyDlgxY?si=5i6K16xONUSUJJ6L",
    title = "YouTube video player",
    frameborder = "0",
    allow = "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share",
    referrerpolicy = "strict-origin-when-cross-origin",
    allowfullscreen = TRUE
  )
}
