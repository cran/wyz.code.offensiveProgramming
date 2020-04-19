\name{matchFunctionSignature}
\alias{matchFunctionSignature}
\title{Retrieve Function Arguments.}
\description{
Compare two functions signatures and tells if they are exactly the same.
}
\usage{
matchFunctionSignature(aFunction_f_1, aFunctionTemplate_f_1 = function(){})
}
\arguments{
\item{aFunction_f_1}{ a \emph{\code{function}} or \emph{\code{primitive}}. Not a string! }
\item{aFunctionTemplate_f_1}{a \emph{\code{function}} or \emph{\code{primitive}}  to be used as model. Not a string! }
}
\value{
A \emph{\code{boolean}} value.
}
\details{
To get \emph{\code{TRUE}} as result, function and function model must share exactly the
sames attributes names and values, including default values if any used.
}
\author{
\packageAuthor{wyz.code.offensiveProgramming}

Maintainer: \packageMaintainer{wyz.code.offensiveProgramming}
}
\examples{
matchFunctionSignature(sum, function(..., na.rm = FALSE) { NULL })
# [1] TRUE

matchFunctionSignature(sum, function(..., na.rm) { NULL })
#[1] FALSE
}
