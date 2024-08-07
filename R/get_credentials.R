user_base <- function() {
  data.frame(
    user = get_credentials("user_name"),
    pass = get_credentials("password"),
    stringsAsFactors = FALSE
  )
}

get_credentials <- function(value) {
  file <- config_path("credentials.txt")
  config <- Sys.getenv("tiltWebTool.password")
  config::get(value, config = config, file = file)
}
