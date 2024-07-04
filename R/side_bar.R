side_bar <- function() {
  card(
    selectChoices("indicator"),
    selectChoices("level"),
    selectChoices("weight", "(product level)"),
    licensed_download()
  )
}
