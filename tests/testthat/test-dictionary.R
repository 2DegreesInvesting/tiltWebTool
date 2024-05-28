test_that("hasn't changed", {
  skip_if_offline()

  expect_snapshot(print(dictionary(), n = Inf))
})
