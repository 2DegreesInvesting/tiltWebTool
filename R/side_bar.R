side_bar <- function() {
  sidebar(
    selectChoices("indicator"),
    selectChoices("level"),
    selectChoices("weight", "(product level)"),
    link("download")
  )
}
