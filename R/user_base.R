user_base <- function() {
  data.frame(
    user = config::get("user_name", file = config_path("credentials.txt")),
    pass = config::get("password", file = config_path("credentials.txt")),
    stringsAsFactors = FALSE
  )
}
