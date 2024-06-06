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
