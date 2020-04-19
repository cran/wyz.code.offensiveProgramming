\name{retrieveFunctionArgumentNames}
\alias{retrieveFunctionArgumentNames}
\title{Retrieve Function Argument Names.}
\description{
Retrieve function argument names from a function or a primitive.
}
\usage{
retrieveFunctionArgumentNames(fun_f_1)
}
\arguments{
\item{fun_f_1}{ a function or primitive. Not a string! }
}

\value{
A \emph{\code{vector}} of \emph{\code{strings}} that are the function names.
}
\author{
\packageAuthor{wyz.code.offensiveProgramming}

Maintainer: \packageMaintainer{wyz.code.offensiveProgramming}
}
\seealso{
See \bold{\emph{\code{\link{retrieveFunctionArguments}}}}.
See \bold{\emph{\code{\link{formalArgs}}}}.
}
\examples{
# typical test on a primitive
retrieveFunctionArgumentNames(sin)
#[1] "x"

# typical test on a function
retrieveFunctionArguments(ls)
#[1] "name"      "pos"       "envir"     "all.names" "pattern"   "sorted"
}
