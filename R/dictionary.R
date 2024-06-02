dictionary <- function() {
  utils::read.csv(dictionary_url("csv"), colClasses = "character")
}

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
