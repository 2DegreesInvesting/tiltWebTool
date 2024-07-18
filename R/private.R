hash <- function() {
  config::get("hash", file = config_path("private.yml"))
}

col_exclude <- function(password) {
  authorized <- sodium::password_verify(hash(), password)
  if (!authorized) {
    col_private()
  } else {
    NULL
  }
}

col_private <- function() {
  config::get("private", file = config_path("private.yml"))
}
