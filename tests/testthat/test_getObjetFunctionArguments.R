context("getObjetFunctionArguments")

test_that("getObjetFunctionArguments", {
  expect_true(is.na(getObjectFunctionArguments(new.env())))
})
