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
