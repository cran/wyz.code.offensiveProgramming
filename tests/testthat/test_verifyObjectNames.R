context("verifyObjectNames")

test_that("verifyObjectNames", {
   expect_error(verifyObjectNames(new.env()))
   expect_error(verifyObjectNames(Bu_S3()))
   expect_error(verifyObjectNames(new('Person_S4', name = 'neonira')))
   expect_error(verifyObjectNames(new('Person_RC', name = 'neonira')))
   expect_type(verifyObjectNames(Accumulator_R6$new()), 'list')
   expect_type(verifyObjectNames(MyEnv()), 'list')
})
