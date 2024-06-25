side_bar <- function() {
  sidebar(
    selectChoices("indicator"),
    selectChoices("level"),
    selectChoices("weight", "(product level)"),
    downloadButton("download", "Download .tsv"),
    tags$sub(paste0("tiltWebTool-v", packageVersion("tiltWebTool")))
  )
}
