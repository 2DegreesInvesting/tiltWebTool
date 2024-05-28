#' The URL where we collaboratively define columns
#'
#' @return Character
#' @export
#'
#' @examples
#' dictionary()
dictionary <- function() {
  tibble::tibble(read.csv(
    dictionary_published_url(),
    colClasses = "character",
    sep = "\t")
  )
}

dictionary_published_url <- function() {
  "https://docs.google.com/spreadsheets/d/e/2PACX-1vSpeL37_DinYYKaQNKWdjL0oKU_VrEKMDBN1dBfBpO6AgSyHLTt8WiiXFojcbPclsPTE0VliDWvRKxh/pub?gid=105958234&single=true&output=tsv"
}
