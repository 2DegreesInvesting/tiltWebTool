library(dplyr)
library(ggplot2)
#
# data <- tidyr::expand_grid(
#   benchmark = c("all", "unit"),
#   emission_profile = c("high", "medium", "low")
# )

data <- expand.grid(
  benchmark = c("all", "unit"),
  emission_profile = c("high", "medium", "low")
)

summary_of_by <- function(data, of, by) {
  data |>
    group_by(.data[[by]], .data[[of]]) |>
    summarise(count = n()) |>
    group_by(.data[[by]]) |>
    mutate(proportion = .data$count / sum(.data$count)) |>
    ungroup()
}

barplot_of_by <- function(data, of, by) {
  data |>
    ggplot(aes(x = .data$proportion, y = .data[[by]], fill = .data[[of]])) +
    geom_col(position = position_stack(reverse = TRUE))
}

data |>
  summary_of_by(of = "emission_profile", by = "benchmark") |>
  barplot_of_by(of = "emission_profile", by = "benchmark")
