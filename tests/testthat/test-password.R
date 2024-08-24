test_that("is sentisitve to user_name", {
  expect_false(identical(get_password("toy"), get_password("tilt")))
})

test_that("defaults to tilt", {
  expect_equal(get_password(), get_password("tilt"))
})

test_that("rejects invalid user_name", {
  expect_snapshot(error = TRUE, get_password("bad"))
})
