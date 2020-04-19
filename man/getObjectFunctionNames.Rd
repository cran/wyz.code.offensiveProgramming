\name{getObjectFunctionNames}
\alias{getObjectFunctionNames}
\alias{getClassTypicalFunctionNames}
\title{Retrieve Function Names From Object}
\description{
Retrieve function names of an object (
see \bold{\emph{\code{\link{is.object}}}}).
)
}
\usage{
getObjectFunctionNames(object_o_1, allNames_b_1 = FALSE)

getClassTypicalFunctionNames(object_o_1)
}
\arguments{
\item{object_o_1}{ the \emph{\code{object}} to analyze. }
\item{allNames_b_1}{ A \emph{\code{boolean}} value. When \emph{\code{TRUE}}, uses
\bold{\emph{\code{\link{getClassTypicalFunctionNames}}}}
to restrict the set of function names returned.}
}
\details{
Function \bold{\emph{\code{\link{getClassTypicalFunctionNames}}}} gives back
function names that are related to
\R class style, and automatically added by \R to your class object.
}
\value{
A \emph{\code{vector}} of function names (\emph{\code{character}}).
}
\author{
\packageAuthor{wyz.code.offensiveProgramming}

Maintainer: \packageMaintainer{wyz.code.offensiveProgramming}
}
\examples{
# typical test
MyEnv <- function() {
     self <- environment()
     class(self) <- append('MyEnv', class(self))
     f <- function(x_3, y_3n) x_3 + y_3n
     self
}

getObjectFunctionNames(MyEnv())
# [1] "f"

# another test
getObjectFunctionNames(new.env())
#[1] NA

}
