library(dplyr, warn.conflicts = FALSE)
library(arrow, warn.conflicts = FALSE)
library(tiltIndicator)

emissions |>
  unnest_product() |>
  group_by(benchmark) |>
  arrow::write_dataset(here::here("db", "product"))

emissions |>
  unnest_company() |>
  group_by(benchmark) |>
  arrow::write_dataset(here::here("db", "company"))
