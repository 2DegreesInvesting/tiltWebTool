user_base <- function(user_name = c("tilt", "toy")) {
  data.frame(
    user = user_name,
    pass = get_password(user_name),
    stringsAsFactors = FALSE
  )
}

get_password <- function(user_name = c("tilt", "toy")) {
  config <- match.arg(user_name)
  config::get("password", config = config, file = config_path("credentials"))
}
