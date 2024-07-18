test_that("snapshots", {
  expect_snapshot(hash())

  expect_snapshot(col_private())
})
