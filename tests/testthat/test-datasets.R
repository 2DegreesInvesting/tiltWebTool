test_that("have the expected size and shape", {
  skip_on_rcmd()

  expect_snapshot(emissions)

  expect_snapshot(sector)

  expect_snapshot(dictionary)
})
