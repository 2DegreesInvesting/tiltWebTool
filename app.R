options(list(shiny.port = 8080L, shiny.host = "0.0.0.0"))
pkgload::load_all(".")
Sys.setenv(tiltWebTool.password = "toy")
run_app(here::here("db"))
