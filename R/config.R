config_path <- function(file) {
  fs::path_package(
    "config",
    fs::path_ext_set(file, "yml"),
    package = "tiltWebTool"
  )
}
