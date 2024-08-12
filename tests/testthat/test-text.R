test_that("get_text() yields the expected `header` and `body`", {
  expect_match(get_text("welcome")$header, "Welcome")
  expect_match(get_text("welcome")$body, "tilt")
})

test_that("text_card() yields a card()", {
  expect_equal(
    class(text_card("welcome")),
    class(bslib::card())
  )
})
