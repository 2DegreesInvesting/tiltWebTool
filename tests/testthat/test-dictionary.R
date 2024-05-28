test_that("hasn't changed", {
  skip_if_offline()

  expect_snapshot(dictionary())
})
