test_that("weight choices hasn't changed", {
  expect_snapshot(unselected_choices("equal_weight"))
  expect_snapshot(unselected_choices("best_case"))
  expect_snapshot(unselected_choices("worst_case"))
})
