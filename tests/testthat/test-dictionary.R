test_that("is sensitive to `type`", {
  expect_true(endsWith(dictionary_url("web"), "true"))
  expect_true(endsWith(dictionary_url("csv"), "csv"))
})

test_that("errors gracefully", {
  expect_snapshot(error = TRUE, dictionary_url("bad"))
})
