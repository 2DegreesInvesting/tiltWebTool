test_that("handles multi-word strings", {
  expect_equal(fmt_title("ab_cd"), "Ab Cd")
})
