test_that("have the expected size and shape", {
  expect_snapshot(emissions)


  emissions_dictionary <- tiltDevTools::use_dictionary(emissions)
  expect_snapshot(emissions_dictionary)

  expect_snapshot(sector)
  sector_dictionary <- tiltDevTools::use_dictionary(sector)
  expect_snapshot(sector_dictionary)
})
