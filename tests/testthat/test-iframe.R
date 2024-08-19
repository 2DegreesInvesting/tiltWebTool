test_that("fails gracefully", {
  expect_snapshot(error = TRUE, iframe_card())
})

test_that("returns a bslib_fragment", {
  expect_s3_class(iframe_card("welcome"), "bslib_fragment")
  expect_s3_class(iframe_card("welcome"), "shiny.tag")
})
