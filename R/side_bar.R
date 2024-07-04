side_bar <- function() {
  sidebar(
    card(
      selectChoices("indicator"),
      selectChoices("level"),
      selectChoices("weight", "(product level)")
    ),
    card(licensed_download())
  )
}
