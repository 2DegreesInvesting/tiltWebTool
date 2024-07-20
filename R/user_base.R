user_base <- function() {
  data.frame(
    # FIXME: The app shows these values no matter what
    user = config::get("user_name", file = config_path("credentials.txt")),
    pass = config::get("password", file = config_path("credentials.txt")),
    stringsAsFactors = FALSE
  )
}
