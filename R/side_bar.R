side_bar <- function() {
  sidebar(
    selectChoices("indicator"),
    selectChoices("level"),
    selectChoices("weight", "(product level)"),
    downloadButton("download", "Download .tsv")
  )
}
