test_that("product", {
  out <- pick_emission(db("product"), "product")
  expect_equal(sort(names(out)), sort(cols_product_emission()))

  out <- pick_emission(db("company"), "company")
  expect_equal(sort(names(out)), sort(cols_company_emission()))
})
