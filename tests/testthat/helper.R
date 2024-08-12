skip_on_rcmd <- function() {
  testthat::skip_if(nzchar(Sys.getenv("R_CMD")), "On R CMD")
}

toy_data <- function(cols) {
  out <- tibble::as_tibble(setNames(as.list(cols), cols))
}
