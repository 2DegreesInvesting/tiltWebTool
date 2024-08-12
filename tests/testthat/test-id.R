test_that("the *_id() functions remain the same", {
  expect_snapshot(home_id())
  expect_snapshot(welcome_id())
  expect_snapshot(disclaimer_id())
  expect_snapshot(dataset_id())
  expect_snapshot(dictionary_id())
  expect_snapshot(video_id())
  expect_snapshot(methodology_id())
})
