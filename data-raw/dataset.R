# Sourcing this file updates the toy parquet database even if nothing changes.
# Removing `sample()` didn't help. I assume the binary parquet files are
# implicated but I don't think it's worth getting to the bottom of the issue
# since this is just very coarse toy data and anything is fine. I'm mostly
# interested in column names and only in the values of some variables so I can
# filter them.

withr::local_seed(1)

library(dplyr)
devtools::load_all()

tibble_from_names <- function(nms) {
  data <- stats::setNames(rep(NA_character_, length(nms)), nms)
  tibble::as_tibble(as.list(data))
}

# TODO: Place tiltWebToolData as a sibling to tiltWebTool
private_db <- function(...) fs::path("../tiltWebToolData/db", ...)

# PPRODUCT ----

# From the latest release of tiltOutput
product <- arrow::open_dataset(private_db("product"))
product |> dplyr::glimpse()

# product, emission/transition_risk
grouping_emission <- product |>
  distinct(grouping_emission) |>
  collect() |>
  pull()

.n <- length(grouping_emission)

scenario <- product |>
  distinct(scenario) |>
  collect() |>
  pull()

product_names <- names(arrow::open_dataset(private_db("product")))
toy_product <- tibble_from_names(product_names) |>
  select(-grouping_emission) |>
  select(-scenario) |>
  select(-companies_id) |>
  select(-company_name) |>
  bind_rows(tibble(grouping_emission)) |>
  distinct() |>
  mutate(
    companies_id = "abc",
    company_name = "abc",
    country = sample(c("germany", "netherlands"), .n, replace = TRUE),
    year = sample(c(2030L, 2050L, NA_integer_), .n, replace = TRUE),
    grouping_transition_risk = grouping_emission,
    scenario = sample(scenario, length(grouping_emission), replace = TRUE)
  ) |>
  relocate(matches(c(
    "companies_id",
    "company_name",
    "country",
    "scenario",
    "grouping"
  )))

toy_product |>
  group_by(grouping_emission) |>
  arrow::write_dataset(here::here("db", "product"))



# COMPANY ----

# From the latest release of tiltOutput
company <- arrow::open_dataset(private_db("company"))
company |> dplyr::glimpse()

# company, emission/transition_risk
grouping_emission <- company |>
  distinct(grouping_emission) |>
  collect() |>
  pull()

.n <- length(grouping_emission)

scenario <- company |>
  distinct(scenario) |>
  collect() |>
  pull()

company_names <- names(arrow::open_dataset(private_db("company")))
toy_company <- tibble_from_names(company_names) |>
  select(-grouping_emission) |>
  select(-scenario) |>
  select(-companies_id) |>
  select(-company_name) |>
  bind_rows(tibble(grouping_emission)) |>
  distinct() |>
  mutate(
    companies_id = "abc",
    company_name = "abc",
    country = sample(c("germany", "netherlands"), .n, replace = TRUE),
    year = sample(c(2030L, 2050L, NA_integer_), .n, replace = TRUE),
    grouping_transition_risk = grouping_emission,
    scenario = sample(scenario, length(grouping_emission), replace = TRUE)
  ) |>
  relocate(matches(c(
    "companies_id",
    "company_name",
    "country",
    "scenario",
    "grouping"
  )))

toy_company |>
  group_by(grouping_emission) |>
  arrow::write_dataset(here::here("db", "company"))
