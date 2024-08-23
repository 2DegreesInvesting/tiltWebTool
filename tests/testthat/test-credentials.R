test_that("get_credentials is sensitive to environment variables", {
  out <- withr::with_envvar(
    list(tiltWebTool.password = "toy"),
    get_credentials("user_name")
  )
  expect_equal(out, "toy")

  out <- withr::with_envvar(
    list(tiltWebTool.password = NULL),
    get_credentials("user_name")
  )
  expect_equal(out, "tilt")
})

test_that("user_base() is sensitive to the environment variable", {
  out1 <- withr::with_envvar(
    list(tiltWebTool.password = "toy"),
    user_base()
  )

  out2 <- withr::with_envvar(
    list(tiltWebTool.password = "tilt"),
    user_base()
  )

  expect_true(identical(out1, out1))
  expect_false(identical(out1, out2))
})
