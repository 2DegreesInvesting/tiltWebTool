test_that("yields a dataframe", {
  skip_if_offline()
  expect_s3_class(dictionary(), "data.frame")
})

test_that("get_dictionary() yields the same URL", {
  skip_if_offline()
  expect_snapshot(get_dictionary("url"))
})
