abort <- function(msg_s_1, ...) {
  stop(paste(msg_s_1, ...))
}
strJoin <- function(text_s, join_s_n = ', ') paste(text_s, sep = '', collapse = join_s_n)

strBracket <- function(text_s_n) {
  paste0('[', text_s_n, ']')
}

destroySpaces <- function(text_s) {
  gsub('[\\s\\b]+', '', text_s, perl = TRUE)
}

removeFilenameExtension <- function(filename_s_1m) {
  b <- stringr::str_count(filename_s_1m, '\\.')
  special_files <- grepl('^\\.+$', filename_s_1m, perl = TRUE)

  rfe <- function(fn_s_1) {
    s <- strsplit(fn_s_1, '.', fixed = TRUE)[[1]]
    paste0(s[-length(s)], collapse = '.')
  }
  vrfe <- Vectorize(rfe)

  ifelse(b != 0 & !special_files,
         vrfe(filename_s_1m),
         filename_s_1m
  )
}

guardExecution <- function(yourExpression_ex, instrumentWarnings_b = TRUE) {
  if (instrumentWarnings_b) {
    tryCatch(yourExpression_ex,
             error = function(e) e,
             warning = function(w) w)
  } else {
    tryCatch(yourExpression_ex,
             error = function(e) e)
  }
}

Bu_S3 <- function(x_l = list(l = letters, d = 0:9)) {
  value <- x_l
  attr(value, 'class') <- 'Bu_S3'
  value
}

Person_S4 <- setClass("Person_S4",
                      slots = c(
                        name = "character",
                        age = "numeric"
                      )
)

setMethod("show", "Person_S4", function(object) {
  cat(is(object)[[1]], "\n",
      "  Name: ", object@name, "\n",
      "  Age:  ", object@age, "\n",
      sep = ""
  )
})

setGeneric("name", function(o_) standardGeneric("name"))
setMethod("name", "Person_S4", function(o_) o_@name)

Person_RC <- setRefClass("Person_RC",
                         fields = list(name = "character",
                                       age = "integer"),
                         methods = list(
                           setName = function(aname) {
                             name <<- aname
                           },
                           setAge = function(anAge) {
                             age <<- anAge
                           }
                         )
)

Accumulator_R6 <- R6::R6Class("Accumulator_R6", list(
  sum = 0,

  add = function(x = 1) {
    self$sum <- self$sum + x
    self$sum
  })
)

MyEnv <- function() {
  self <- environment()
  class(self) <- append('MyEnv', class(self))

  f <- function(x_d) x_d
  self
}

EmptyEnv <- function() {
  self <- environment()
  class(self) <- append('EmptyEnv', class(self))
  self
}

Zorg <- function() {
  self <- environment()
  class(self) <- append('Zorg', class(self))

  h <- f <- function(x_d) x_d

  function_name <- NULL # data.table NSE issue with Rcmd check
  function_return_types <- data.table(
    function_name = c('f'),
    return_value = c('x_d')
  )[order(function_name)]
  self
}

# wrong column name in data.table
Zarg <- function() {
  self <- environment()
  class(self) <- append('Zarg', class(self))

  h <- f <- function(x_d) x_d

  function_return_types <- data.table(
    function_names = c('f'),
    return_value = c('x_d')
  )
  self
}

# wrong test case definition - none is an unallowed keyword for standard_evaluation
Zurg <- function() {
  self <- environment()
  class(self) <- append('Zurg', class(self))

  h <- f <- function(x_d) x_d

  test_case_definitions <- data.table(
    function_name = c('f'),
    standard_evaluation = c('none'),
    type_checking_enforcement = c('correct'),
    test_case = list(
      TestCaseDefinition(list(34), 34, 'f nominal')
    )
  )

  self
}

# wrong test case definition - none is an unallowed keyword for type_checking_enforcement
Zirg <- function() {
  self <- environment()
  class(self) <- append('Zirg', class(self))

  h <- f <- function(x_d) x_d

  test_case_definitions <- data.table(
    function_name = c('f'),
    standard_evaluation = c('correct'),
    type_checking_enforcement = c('none'),
    test_case = list(
      TestCaseDefinition(list(34), 34, 'f nominal')
    )
  )

  self
}
