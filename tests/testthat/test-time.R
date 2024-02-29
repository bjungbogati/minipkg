test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})


test_that("what_time() works", {
  expect_type(what_time(), "character")
})


test_that("function works", {
  withr::local_options("usethis.quiet" = FALSE)
  # expecations

})

test_that("what_time() works", {

  example_object <- create_example_object()

})
