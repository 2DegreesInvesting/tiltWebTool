test_that("works with defaults", {
  expect_no_error(run_app())
})

test_that("has 'user_name'", {
  expect_no_error(run_app(user_name = "toy"))
})

test_that("has 'db'", {
  expect_no_error(run_app(db = here::here("db")))
})
