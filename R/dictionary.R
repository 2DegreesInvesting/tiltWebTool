dictionary <- function() {
  arrow::read_tsv_arrow(get_dictionary("url"))
}

get_dictionary <- function(x) {
  config::get(x, file = config_path("dictionary"))
}
