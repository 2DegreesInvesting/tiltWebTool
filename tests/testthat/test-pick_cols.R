test_that("with bad level errors gracefully", {
  data <- toy_data(c(cols_company_emission(), "new"))
  expect_error(pick_emission(data, "bad"), "should be.*product.*company")
})

test_that("lacks irrelevant columns", {
  data <- toy_data(c(cols_company_emission(), "new"))
  out <- pick_emission(data, "company")
  expect_false(hasName(out, "new"))
})

test_that("has expected columns", {
  data <- toy_data(c(cols_company_emission(), "new"))
  out <- pick_emission(data, "company")
  expect_named(out, cols_company_emission())
})

test_that("lacks irrelevant columns", {
  data <- toy_data(c(cols_product_emission(), "new"))
  out <- pick_emission(data, "product")
  expect_false(hasName(out, "new"))
})

test_that("has expected columns", {
  data <- toy_data(c(cols_product_emission(), "new"))
  out <- pick_emission(data, "product")
  expect_named(out, cols_product_emission())
})

test_that("lacks irrelevant columns", {
  data <- toy_data(c(cols_product_sector(), "new"))
  out <- pick_sector(data, "product")
  expect_false(hasName(out, "new"))
})

test_that("has expected columns", {
  data <- toy_data(c(cols_product_sector(), "new"))
  out <- pick_sector(data, "product")
  expect_named(out, cols_product_sector())
})

test_that("lacks irrelevant columns", {
  data <- toy_data(c(cols_product_transition_risk(), "new"))
  out <- pick_transition_risk(data, "product")
  expect_false(hasName(out, "new"))
})

test_that("has expected columns", {
  data <- toy_data(c(cols_product_transition_risk(), "new"))
  out <- pick_transition_risk(data, "product")
  expect_named(out, cols_product_transition_risk())
})

test_that("lacks irrelevant columns", {
  data <- toy_data(c(cols_company_transition_risk(), "new"))
  out <- pick_transition_risk(data, "company")
  expect_false(hasName(out, "new"))
})

test_that("has expected columns", {
  data <- toy_data(c(cols_company_transition_risk(), "new"))
  out <- pick_transition_risk(data, "company")
  expect_named(out, cols_company_transition_risk())
})

test_that("lacks irrelevant columns", {
  data <- toy_data(c(cols_company_sector(), "new"))
  out <- pick_sector(data, "company")
  expect_false(hasName(out, "new"))
})

test_that("has expected columns", {
  data <- toy_data(c(cols_company_sector(), "new"))
  out <- pick_sector(data, "company")
  expect_named(out, cols_company_sector())
})
