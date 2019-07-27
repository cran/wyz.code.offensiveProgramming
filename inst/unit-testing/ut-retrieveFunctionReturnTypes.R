.lpkg <- loadPackages(c('stringr', 'lubridate', 'data.table'))

sample_folder <- ifelse(file.exists('code-samples'), 'code-samples',
                        ifelse(file.exists('inst/code-samples'), 'inst/code-samples', '../../inst/code-samples'))
files <- list.files(sample_folder, pattern = glob2rx('*.R'), recursive = TRUE, full.names = TRUE)
.sf <- sapply(files, source, encoding = 'UTF-8', keep.source = TRUE, simplify = FALSE)

sample_names <- wyz.filesystem.ops::removeFilenameExtension(basename(files))
sample_objects <- sapply(sample_names, function(e) eval(parse(text = paste0(e, '()'))))
names(sample_objects) <- files
#print(sample_objects)

fptf <- FunctionParameterTypeFactory()
name_compliance <- lapply(sample_objects, verifyObjectNames, fptf)

l <- length(name_compliance[[1]])
dcond <- rbindlist(lapply(name_compliance, function(e) e[4:l]))
#print(dcond)

frt <- lapply(sample_objects, retrieveFunctionReturnTypes, fptf)
frt_b <- unlist(lapply(frt, function(e) is.data.table(e)))

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
balance[, `:=`(result = frt_b)]
balance[, `:=`(status = ifelse(result == expected_result, 'success', 'failure'))]
print(balance)
