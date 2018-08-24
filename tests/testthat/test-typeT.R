context("typeT")


test_that("#3 - Test 'type' function", {

  expect_false(typeT(0, logical))
  expect_true(typeT(1, "logical"))

  expect_null(typeT("test", "NULL"))

  expect_type(typeT("test", "NULL"), "NULL")
  expect_type(typeT("test", "NULL"), NULL)

  expect_is(typeT(factor(c(1, 1, 0, 2)), "integer"), "integer")
  expect_s3_class(factor(typeT(c(1, 1, 0, 2), "integer")), "factor")

})

test_that("#4 - Test 'type' function", {

  expect_error(typeT('abc123',), "Error : type not found!")
  expect_warning(typeT('abc123',), "Error : type not found!")

  expect_output(typeT('abc123',), "Error : type not found!")
  expect_silent(typeT('test if silent', ))

})
