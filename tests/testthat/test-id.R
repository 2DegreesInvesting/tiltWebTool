test_that("guide", {
  expect_snapshot(guide_id())

  expect_snapshot(get_link(guide_id()))

  out <- text_card(guide_id())
  expect_snapshot(out[["children"]][[1]])
})
