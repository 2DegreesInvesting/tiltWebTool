skip_on_rcmd <- function() {
  testthat::skip_if(nzchar(Sys.getenv("R_CMD")), "On R CMD")
}

db <- function(...) {
  arrow::open_dataset(here::here("db", ...))
}

test_db <- function() {
  testthat::test_dir(testthat::test_path("db"))
}
