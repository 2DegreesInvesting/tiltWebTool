test_that("errors gracefully", {
  expect_snapshot(error = TRUE, selectChoices())
  expect_snapshot(error = TRUE, selectChoices("bad"))
})

test_that("haven't changed", {
  expect_snapshot(level_choices())
  expect_snapshot(country_choices())
})
