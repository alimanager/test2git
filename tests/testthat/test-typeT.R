context("typeT")


test_that("#3 - Test 'type' function", {

  expect_true(typeT(0, "logical")) # * typeT(0, "logical") isn't true
  expect_false(typeT(1, "logical")) # true


  expect_null(typeT("test", "NULL")) #* typeT("test", "NULL") is not null.
  expect_null(typeT(NA, "NULL")) # NA : Non Assert is not null

  expect_null(NULL) # TRUE
  expect_true(is.data.frame(iris)) # TRUE


  expect_is(typeT(factor(c(1, 1, 0, 2)), "integer"), "integer")
  expect_is(factor("a"), "factor")
  expect_is(c(1,2,3), "vector")

  model <- lm(mpg ~ wt, data = mtcars)
  expect_is(model, "glm")


})

test_that("#4 - Test 'type' function", {

  expect_error(typeT('abc123',), "Error : type not found!")
  expect_warning(typeT('abc123',), "Error : type not found!")

  expect_output(typeT('abc123',), "Error : type not found!")
  expect_silent(hello())

})
