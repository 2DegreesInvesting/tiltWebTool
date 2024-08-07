selectChoices <- function(id, details = NULL) {
  choices <- get(paste0(id, "_choices"))
  selectInput(
    id,
    paste(tools::toTitleCase(id), details),
    choices = choices()
  )
}

level_choices <- function() {
  c("product", "company")
}

country_choices <- function() {
  c("all", "austria", "france", "germany", "netherlands", "spain")
}

year_choices <- function() {
  c("all", "2030", "2050", "NA")
}

scenario_choices <- function() {
  c("all", "NZ 2050", "1.5C RPS", "NA")
}
