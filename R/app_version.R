app_version <- function() {
  version <- paste0("tiltWebTool-v", packageVersion("tiltWebTool"))
  tags$a(version, href = "https://github.com/2DegreesInvesting/tiltWebTool")
}
