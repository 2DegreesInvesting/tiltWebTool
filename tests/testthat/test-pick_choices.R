test_that("with 'all' yields all data", {
  data <- tibble::tibble(x = c("a", "b", "c"))
  input <- list(x = "all")
  out <- pick_choice(data, input, "x")
  expect_equal(out, data)
})

test_that("picks NA", {
  data <- tibble::tibble(x = c("a", "b", NA_character_))
  input <- list(x = "NA")
  out <- pick_choice(data, input, "x")
  expect_equal(out, tibble::tibble(x = NA_character_))
})

test_that("picks a specific value", {
  data <- tibble::tibble(x = c("a", "b", "b"))

  out <- pick_choice(data, list(x = "a"), "x")
  expect_equal(out, tibble::tibble(x = "a"))

  out <- pick_choice(data, list(x = "b"), "x")
  expect_equal(out, tibble::tibble(x = c("b", "b")))
})

test_that("picks an integer value with a character input", {
  data <- tibble::tibble(x = c(1L, 2L, NA))

  out <- pick_choice(data, list(x = "1"), "x")
  expect_equal(out, tibble::tibble(x = 1L))

  out <- pick_choice(data, list(x = "NA"), "x")
  expect_equal(out, tibble::tibble(x = NA_integer_))
})

test_that("picks 'NA' with no warning", {
  data <- tibble::tibble(x = c(1L, 2L, NA))
  expect_no_warning(pick_choice(data, list(x = "NA"), "x"))
})
