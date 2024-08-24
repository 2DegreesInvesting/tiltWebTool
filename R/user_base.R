user_base <- function(user_name = c("tilt", "toy")) {
  user_name <- match.arg(user_name)

  data.frame(
    user = user_name,
    pass = get_password(user_name),
    stringsAsFactors = FALSE
  )
}

get_password <- function(config = c("tilt", "toy")) {
  config::get("password", config = config, file = config_path("credentials"))
}
