test_that("the license is CC BY-NC-ND 4.0", {
  expect_match(tilt_license(), "CC BY-NC-ND 4.0")
})
