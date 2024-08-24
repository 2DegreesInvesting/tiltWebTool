# If done in Dockerfile the cache gives outdated versions of tiltWebTool
pak::pak("2DegreesInvesting/tiltWebTool")
options(list(shiny.port = 8080L, shiny.host = "0.0.0.0"))
tiltWebTool::run_app("toy")
