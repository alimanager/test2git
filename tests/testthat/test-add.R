library(testthat)
context("add")

test_that("#2 - Test 'add' function", {
  expect_equal(add(1, 2), 3)
  expect_equal(add(NA, NA), 3)
  expect_equal(add(Inf, Inf), "3")

  expect_equal(as.double(add(1,2)), as.integer(3))
  expect_identical(as.double(add(1,2)), as.integer(3))

  expect_identical(add(c(1, 2, 3) + 1) , add(c(1, 3, 2) + 1))
  expect_identical(add(c(1, 2) , 1) , add(c(1, 2), 1))

  expect_setequal(add(c(1, 2) , 1) , add(c(2, 1), 1)) #ignores order and duplicates

})

test_that("#2.1 - Expectation test 'add' function" , {
  expect_lt(add(2, 2) , 4)
  expect_lte(add(2, 2), 4)
  expect_gt(add(2, 2) , 4)
  expect_gte(add(2, 2), 4)
})

test_that("#2.1 - Expectation test 'add' function" , {

  skip('test #2.1 arrêté, package testthat no disponible')
  expect_gte(add(2, 2), 4)
})

