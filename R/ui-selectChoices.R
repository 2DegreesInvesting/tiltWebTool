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
  c("austria", "france", "germany", "netherlands", "spain")
}

indicator_choices <- function() {
  c("emissions", "sector")
}
