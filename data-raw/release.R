library(tiltWebTool)

emissions |>
  unnest_product() |>
  dplyr::group_by(country) |>
  duckdbfs::write_dataset("~/Downloads/tiltWebTool-data/emissions_product")

duckdbfs::open_dataset("~/Downloads/tiltWebTool-data/emissions_product")
