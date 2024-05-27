# Examples from:
# https://2degreesinvesting.github.io/tiltIndicatorAfter/reference/profile_emissions_upstream.html#ref-examples
# https://2degreesinvesting.github.io/tiltIndicatorAfter/reference/profile_sector_upstream.html#ref-examples

version <- "0.0.0.9042"
pak::pak(glue::glue("2degreesinvesting/tiltIndicatorAfter@v{version}"))
library(tiltIndicatorAfter)
expected <- packageVersion("tiltIndicatorAfter") == version
if (!expected) {
  rlang::abort(c(
    glue::glue("tiltIndicatorAfter must be at v{version}."),
    i = "Do you need to install that version, or update the `version` variable?"
  ))
}

library(tiltToyData)
library(readr, warn.conflicts = FALSE)

withr::local_seed(1)

companies <- read_csv(toy_emissions_profile_any_companies())
products <- read_csv(toy_emissions_profile_products_ecoinvent())
europages_companies <- read_csv(toy_europages_companies())
ecoinvent_activities <- read_csv(toy_ecoinvent_activities())
ecoinvent_europages <- read_csv(toy_ecoinvent_europages())
isic_name <- read_csv(toy_isic_name())

emissions <- profile_emissions(
  companies,
  products,
  europages_companies = europages_companies,
  ecoinvent_activities = ecoinvent_activities,
  ecoinvent_europages = ecoinvent_europages,
  isic = isic_name
)

usethis::use_data(emissions, overwrite = TRUE)

companies <- read_csv(toy_sector_profile_companies())
scenarios <- read_csv(toy_sector_profile_any_scenarios())
europages_companies <- read_csv(toy_europages_companies())
ecoinvent_activities <- read_csv(toy_ecoinvent_activities())
ecoinvent_europages <- read_csv(toy_ecoinvent_europages())
isic_name <- read_csv(toy_isic_name())

sector <- profile_sector(
  companies,
  scenarios,
  europages_companies = europages_companies,
  ecoinvent_activities = ecoinvent_activities,
  ecoinvent_europages = ecoinvent_europages,
  isic = isic_name
)

usethis::use_data(sector, overwrite = TRUE)
