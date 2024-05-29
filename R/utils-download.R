time_stamp <- function(x) {
  stamp <- format(Sys.time(), "%Y-%m-%e_%H:%M:%S_")
  paste0(stamp, x)
}
