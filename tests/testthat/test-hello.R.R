# test_file(paste0(getwd(),'/tests/testthat/test-hello.R.R'),reporter = "summary")

context("hello.R")

test_that("#1 - test 'Hello' function", {
  expect_equal(hello(), "Hello, world!")
  expect_equal(hello(1), "Hello, world!")
})



