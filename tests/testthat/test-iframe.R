test_that("fails gracefully", {
  expect_snapshot(error = TRUE, iframe_card())
})
