\name{TestCaseDefinition}
\alias{TestCaseDefinition}
\title{ Test Case Definition }
\description{ Defines a test case }
\usage{
TestCaseDefinition(params_l, expectedResult_, description_s_1)
}
\arguments{
  \item{params_l}{ a \emph{\code{list}} that holds the test case input values }
  \item{expectedResult_}{ test case expected result. This will be used to compare with
  function execution results}
  \item{description_s_1}{ a single entry character \emph{\code{vector}},
  that is the test case description string
}
}
\value{
An \emph{\code{object}} that is an \R \emph{\code{environment}} class.
}
\author{
\packageAuthor{wyz.code.offensiveProgramming}

Maintainer: \packageMaintainer{wyz.code.offensiveProgramming}
}
\seealso{
Refer to \bold{\emph{\code{\link{FunctionParameterTypeFactory}}}}
}
\examples{
##---- typical case ----
tcd <- TestCaseDefinition(list(1:5), 15, 'sum of 5 first non nul integers')
tcd <- TestCaseDefinition(list(1:7, 3:5, sample(1:100, 19, FALSE)),
                          list(3:5), 'extract smallest length from input')
}
\keyword{ programming }
\keyword{ utilities }
\concept{ code evaluation mode }
