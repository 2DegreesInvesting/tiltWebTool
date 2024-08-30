test_that("fails gracefully", {
  expect_snapshot(error = TRUE, iframe())
})

test_that("returns a bslib_fragment", {
  expect_s3_class(iframe(welcome_id()), "shiny.tag")
})
