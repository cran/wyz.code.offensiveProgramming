context("getRObjectClassKind")

test_that("getRObjectClassKind", {
  expect_true(is.na(getRObjectClassKind(new.env())))
  expect_equal(getRObjectClassKind(Bu_S3()), 'S3')
  expect_equal(getRObjectClassKind(new('Person_S4', name = 'neonira')), 'S4')
  expect_equal(getRObjectClassKind(new('Person_RC', name = 'neonira')), 'RC')
  expect_equal(getRObjectClassKind(Accumulator_R6$new()), 'R6')
  expect_equal(getRObjectClassKind(MyEnv()), 'environment')
})
