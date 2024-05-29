#' Dictionary
#'
#' @return Character
#' @export
#'
#' @examplesIf FALSE
#' # Edit the dictionary here
#' dictionary_edit() |> browseURL()
#'
#' # Your edits are automatically published here
#' dictionary_url("web") |> browseURL()
#'
#' # You can read it as a "csv"
#' dictionary_url("csv") |>
#'   read.csv() |>
#'   head()
dictionary_url <- function(type = c("web", "csv")) {
  type <- match.arg(type)

  switch(type,
    web = web_url(),
    csv = paste0(web_url(), "&output=", type),
    stop("Unknown type: ", type)
  )
}

web_url <- function() {
  # File > Share > Publish to web
  "https://docs.google.com/spreadsheets/d/e/2PACX-1vSpeL37_DinYYKaQNKWdjL0oKU_VrEKMDBN1dBfBpO6AgSyHLTt8WiiXFojcbPclsPTE0VliDWvRKxh/pub?gid=105958234&single=true"
}

#' @export
#' @rdname dictionary_url
dictionary_edit <- function() {
  "https://docs.google.com/spreadsheets/d/1gOZRS9_0yUgR7UXgsf4WmDoAEXfUQy3Mz0MZM1Xvv40/edit#gid=105958234"
}

dictionary_iframe <- function() {
  "https://docs.google.com/spreadsheets/d/e/2PACX-1vSpeL37_DinYYKaQNKWdjL0oKU_VrEKMDBN1dBfBpO6AgSyHLTt8WiiXFojcbPclsPTE0VliDWvRKxh/pubhtml?widget=true&amp;headers=false"
}
