context("retrieveFunctionReturnTypes")

source('pathResolver.R')
sample_folder <- file.path(computeRootPath(), 'code-samples')

files <- list.files(sample_folder, pattern = glob2rx('*.R'), recursive = TRUE, full.names = TRUE)
files <- files[grep('_S3', files, fixed = TRUE, invert = TRUE)] # S3 brings failure
.sf <- sapply(files, source, encoding = 'UTF-8', keep.source = TRUE, simplify = FALSE)

sample_names <- removeFilenameExtension(basename(files))
sample_objects <- sapply(sample_names, function(e) eval(parse(text = paste0(e, '()'))))
names(sample_objects) <- files
#print(sample_objects)

fptf <- FunctionParameterTypeFactory()
name_compliance <- lapply(sample_objects, verifyObjectNames, fptf)

l <- length(name_compliance[[1]])
dcond <- rbindlist(lapply(name_compliance, function(e) e[4:l]))
#print(dcond)

tcd <- lapply(sample_objects, retrieveFunctionReturnTypes, fptf)
tcd_b <- unlist(lapply(tcd, function(e) is.data.table(e)))

expectedResult <- function(files_s) {
  data.table(file = files_s,
             expected_result =
               ifelse(grepl('fun-defs|full-instrumentation', files_s, perl = TRUE),
                      grepl('good|full-instrumentation', files_s, perl = TRUE),
                      FALSE)
  )
}

er <- expectedResult(files)

balance <- copy(er)
balance[, `:=`(result = tcd_b)]
balance[, `:=`(status = ifelse(result == expected_result, 'success', 'failure'))]
#print(balance)

test_that("retrieveFunctionReturnTypes", {
  mtf <- function(k) {
    expect_equal(balance$status[!!k], 'success')
  }

  lapply(seq_len(nrow(balance)), mtf)
})
