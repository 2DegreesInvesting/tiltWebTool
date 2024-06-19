selectChoices <- function(id, details = NULL) {
  choices <- get(paste0(id, "_choices"))
  selectInput(
    id,
    paste(tools::toTitleCase(id), details),
    choices = choices()
  )
}

indicator_choices <- function() {
  c("emissions", "sector")
}

level_choices <- function() {
  indicator_levels()
}

weight_choices <- function() {
  weight_modes()
}
