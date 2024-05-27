skip_on_rcmd <- function() {
  testthat::skip_if(nzchar(Sys.getenv("R_CMD")), "On R CMD")
}
