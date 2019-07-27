.lpkg <- loadPackages(c('stringr', 'lubridate', 'data.table'))
.sf <- sourceFiles(c(file.path(getwd(), 'inst/code-samples/no-instrumentation/Addition.R'),
                     file.path(getwd(), 'inst/code-samples/fun-defs/good/full/AdditionFI.R')))

a <- Addition()
print(verifyObjectNames(a))

fi <- AdditionFI()
print(verifyObjectNames(fi))