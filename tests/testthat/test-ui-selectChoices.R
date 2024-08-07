test_that("snap", {
  expect_snapshot(selectChoices("country"))
})

test_that("errors gracefully", {
  expect_snapshot(error = TRUE, selectChoices())
  expect_snapshot(error = TRUE, selectChoices("bad"))
})

test_that("haven't changed", {
  expect_snapshot(level_choices())
  expect_snapshot(country_choices())
  expect_snapshot(year_choices())
  expect_snapshot(scenario_choices())
  expect_snapshot(grouping_emission_choices())
})
