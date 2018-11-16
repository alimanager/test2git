library(testthat)
context("add")


test_that("#3 - Test *expect_match* function", {
  string <- "Testing is fun!"

  expect_match(string, "Testing")

  # Fails, match is case-sensitive
  expect_match(string, "testing")

  # Additional arguments are passed to grepl:
  expect_match(string, "testing", ignore.case = TRUE)
})

test_that("#2 - Test 'add' function", {
  expect_equal(add(1, 2), 3)

  expect_equal(10, 10 + 1e-7)  # Objects equal
  expect_identical(10, 10 + 1e-7) # Objects equal but not identical

  expect_equal(as.double(add(1,2)), as.integer(3))
  expect_identical(as.double(add(1,2)), as.integer(3))#Objects equal but not identical


  expect_setequal(add(c(1, 2) , 1) , add(c(2, 1), 1)) #ignores order and duplicates

})

test_that("#2.1 - Expectation test 'add' function" , {
  expect_lte(add(2, 2), 3)
  expect_gte(add(2, 2), 5)
  skip('test #2.1 arrêté, package testthat no disponible')
  expect_gte(add(2, 2), 2)
})

test_that("#3 - Test *expect_match* function", {
  string <- "Testing is fun!"

  expect_match(string, "Testing")

  # Fails, match is case-sensitive
  expect_match(string, "testing")

  # Additional arguments are passed to grepl:
  expect_match(string, "testing", ignore.case = TRUE)
})

