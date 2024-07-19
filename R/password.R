hash <- function() {
  config::get("hash", file = config_path("private.yml"))
}
