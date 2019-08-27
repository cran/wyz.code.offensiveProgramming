context("getRClassTypicalFunctionNames")

test_that("getRClassTypicalFunctionNames", {
  expect_true(is.na(getRClassTypicalFunctionNames(new.env())))
  expect_length(getRClassTypicalFunctionNames(Bu_S3()), 0)
  expect_length(getRClassTypicalFunctionNames(new('Person_S4', name = 'neonira')), 1)
  expect_length(getRClassTypicalFunctionNames(new('Person_RC', name = 'neonira')), 12)
  expect_length(getRClassTypicalFunctionNames(Accumulator_R6$new()), 1)
  expect_length(getRClassTypicalFunctionNames(MyEnv()), 0)
})

