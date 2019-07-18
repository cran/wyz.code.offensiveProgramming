.lpkg <- loadPackages(c('stringr', 'lubridate', 'data.table', 'wyz.string.ops',
                        'wyz.filesystem.ops', 'wyz.string.human'))

sp <- file.path(getwd(), 'inst/code-samples')

getSampleFiles <- function(foldername_s) {
  src_folders <- file.path(sp, foldername_s, c('good', 'bad'))
  list.files(src_folders, '*.R', recursive = TRUE, full.names = TRUE)
}

sf <- getSampleFiles('tc-defs')

.sf <- sourceFiles(sf)


executeControl <- function(filename_s) {
  g <- grepl('/good/', filename_s, fixed = TRUE)
  f <- grepl('/full/', filename_s, fixed = TRUE)
  kind <- strBracket(ifelse(g, ifelse(f, 'good full', 'good partial'), 'bad'))
  bn <- basename(filename_s)
  cat(informativeLine(paste(bn, kind), pre_i_1 = 1))
  rbn <- removeFilenameExtension(bn)
  eval(parse(text = paste0('x <- ', rbn, '()')))

  strict <- !grepl('_|\\.', rbn, perl = TRUE)
  rv <- verifyTestCaseDefinitions(x, ifelse(g, ifelse(f, TRUE, FALSE), FALSE))
  catn('expected is', ifelse(exists('label', envir = x), x$label, 'no error'))
  catn(ifelse(rv$validity == g, 'correct behavior', 'erroneous behavior'))
}

sapply(sf, executeControl, simplify = FALSE)
