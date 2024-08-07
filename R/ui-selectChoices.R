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

year_choices <- function() {
  c(2030L, 2050L, NA_integer_)
}

indicator_choices <- function() {
  c("emissions", "sector")
}
