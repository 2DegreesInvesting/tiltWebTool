user_base <- function(user_name = "tilt") {
  data.frame(
    user = user_name,
    pass = get_password(user_name),
    stringsAsFactors = FALSE
  )
}
