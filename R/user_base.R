user_base <- function() {
  data.frame(
    # FIXME: The app shows these values no matter what
    user = c("user1", "user2"),
    pass = config::get("hash", file = config_path("private.txt")),
    stringsAsFactors = FALSE
  )
}
