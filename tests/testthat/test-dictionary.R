test_that("yields a dataframe", {
  expect_s3_class(dictionary(), "data.frame")
})

test_that("get_dictionary() yields the same URL", {
  expect_snapshot(get_dictionary("url"))
})
