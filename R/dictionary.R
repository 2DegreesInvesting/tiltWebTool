#' Dictionary
#'
#' @description
#' URLs:
#' * Edit at: `r dic_edit_url()`
#' * Published at: `r dic_publish_url()`
#'
#' @return Character
#' @export
#'
#' @examplesIf FALSE
#' dictionary()
dictionary <- function() {
  tibble::tibble(
    # readr::read_csv() is generally better let's avoid the dependency for now
    # `colClasses` makes it do less work (so faster)
    # https://adv-r.hadley.nz/perf-improve.html#be-lazy
    read.table(
      dic_publish_url(),
      header = TRUE,
      colClasses = "character",
      sep = "\t"
    )
  )
}

dic_edit_url <- function() {
  "https://docs.google.com/spreadsheets/d/1gOZRS9_0yUgR7UXgsf4WmDoAEXfUQy3Mz0MZM1Xvv40/edit#gid=105958234"
}
dic_publish_url <- function() {
  # File > Share > Publish to web
  "https://docs.google.com/spreadsheets/d/e/2PACX-1vSpeL37_DinYYKaQNKWdjL0oKU_VrEKMDBN1dBfBpO6AgSyHLTt8WiiXFojcbPclsPTE0VliDWvRKxh/pub?gid=105958234&single=true&output=tsv"
}
