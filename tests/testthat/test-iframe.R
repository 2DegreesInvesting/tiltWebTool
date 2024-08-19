test_that("fails gracefully", {
  expect_snapshot(error = TRUE, iframe_section())
})

test_that("returns a bslib_fragment", {
  expect_s3_class(iframe_section("welcome"), "shiny.tag")
})
