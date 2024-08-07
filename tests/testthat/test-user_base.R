test_that("remains the same", {
  skip_on_cran()
  skip_on_ci()
  skip_on_rcmd()
  expect_snapshot(user_base())
})
