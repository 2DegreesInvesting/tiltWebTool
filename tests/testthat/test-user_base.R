test_that("defaults to tilt", {
  expect_equal(user_base(), user_base("tilt"))
})

test_that("is sentisitve to user_name", {
  expect_false(identical(user_base("tilt"), user_base("toy")))
})

test_that("is a data frame", {
  expect_s3_class(user_base("tilt"), "data.frame")
})

test_that("rejects invalid user_name", {
  expect_snapshot(error = TRUE, user_base("bad"))
})
