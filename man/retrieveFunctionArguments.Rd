\name{retrieveFunctionArguments}
\alias{retrieveFunctionArguments}
\title{Retrieve Function Arguments.}
\description{
Retrieve function arguments to get arguments from a function or a primitive.
}
\usage{
retrieveFunctionArguments(fun_f_1)
}
\arguments{
\item{fun_f_1}{ a function or primitive. Not a string! }
}
\value{
A \emph{\code{pairlist}}.
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
retrieveFunctionArguments(sin)
#$x
#

# typical test on a function
retrieveFunctionArguments(ls)
#$name


#$pos
#-1L

#$envir
#as.environment(pos)

#$all.names
#[1] FALSE

#$pattern
#

#$sorted
#[1] TRUE

}
