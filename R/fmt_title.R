fmt_title <- function(x) {
  x <- unlist(strsplit(x, "_"))
  x <- tools::toTitleCase(x)
  x <- paste(x, collapse = " ")
  x
}
