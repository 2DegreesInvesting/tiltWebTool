licensed_download <- function() {
  tags$p(
    download(),
    "(license: ", license(), ")"
  )
}

download <- function() {
  tags$a("Download", href = "https://zenodo.org/records/12638774")
}

license <- function() {
  tags$a("CC BY-NC-ND 4.0", href = "https://creativecommons.org/licenses/by-nc-nd/4.0/legalcode")
}
