side_bar <- function() {
  sidebar(
    selectChoices("indicator"),
    selectChoices("level"),
    selectChoices("weight", "(product level)"),
    download()
  )
}


download <- function() {
  tags$p(
    tags$a("Download", href = "https://zenodo.org/records/12638774"),
    tags$a("under"),
    tags$a("license CC BY-NC-ND 4.0", href = "https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode")
  )

}
