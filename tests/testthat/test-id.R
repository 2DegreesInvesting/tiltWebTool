test_that("guide", {
  expect_snapshot(home_id())

  expect_snapshot(welcome_id())

  expect_snapshot(dataset_id())

  expect_snapshot(dictionary_id())

  expect_snapshot(video_id())

  expect_snapshot(methodology_id())

  expect_snapshot(guide_id())

  expect_snapshot(get_link(guide_id()))

  expect_snapshot(text_card(guide_id())[["children"]][[1]])
})
