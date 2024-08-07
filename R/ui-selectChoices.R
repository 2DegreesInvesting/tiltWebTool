selectChoices <- function(id) {
  choices <- get(paste0(id, "_choices"))
  selectInput(
    id,
    fmt_title(id),
    choices = choices()
  )
}

# TODO:
# * Maybe move to select-choices.yaml?
# * CI to ensure this captures all choices in real data

level_choices <- function() {
  c("product", "company")
}

indicator_choices <- function() {
  c("emission", "sector", "transition_risk")
}

country_choices <- function() {
  c(
    ".",
    "austria",
    "france",
    "germany",
    "netherlands",
    "spain"
  )
}

year_choices <- function() {
  c(
    ".",
    "2030",
    "2050",
    "NA"
  )
}

scenario_choices <- function() {
  c(
    ".",
    "NZ 2050",
    "1.5C RPS",
    "NA"
  )
}

grouping_emission_choices <- function() {
  c(
    ".",
    "all",
    "isic_4digit",
    "tilt_subsector",
    "unit",
    "unit_isic_4digit",
    "unit_tilt_subsector",
    "NA"
  )
}
