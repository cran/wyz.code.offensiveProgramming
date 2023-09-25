\name{retrieveTestCaseDefinitions}
\alias{retrieveTestCaseDefinitions}
\alias{retrieveTestCaseDescriptions}
\title{
Retrieve test case definitions or test case descriptions.
}
\description{
From an instrumented class, retrieve the test case definitions or descriptions.
}
\usage{
retrieveTestCaseDefinitions(object_o_1)
retrieveTestCaseDescriptions(object_o_1)
}
\arguments{
  \item{object_o_1}{the \code{object} to consider}
}
\value{
For \code{function}, \code{\link{retrieveTestCaseDefinitions}},
a polymorphic return that is either
\item{a \code{list}}{as returned by the \code{\link{verifyObjectNames}} function}
\item{another \code{list}}{as returned by the
\code{\link{verifyFunctionReturnTypesDefinition}} function}
\item{a \code{data.table}}{the test case definitions as declared in the source class}

For \code{function}, \code{\link{retrieveTestCaseDescriptions}},
either a character \code{vector} when no test case definitions exists or a
\code{data.table} of the test case descriptions.
}
\author{
\packageAuthor{wyz.code.offensiveProgramming}

Maintainer: \packageMaintainer{wyz.code.offensiveProgramming}
}
\seealso{
Refer to  \bold{\emph{\code{\link{defineEvaluationModes}}}}.
}
\examples{
##---- typical case ----
library('data.table')
source(system.file('code-samples/tcd-defs/good/partial/AdditionTCPartial.R',
                   package = 'wyz.code.offensiveProgramming'))
source(system.file('code-samples/no-defs/Addition.R',
                   package = 'wyz.code.offensiveProgramming'))
retrieveTestCaseDefinitions(AdditionTCPartial()) # works, renders a data.table
retrieveTestCaseDefinitions(Addition()) # fails, renders a list

retrieveTestCaseDescriptions(Addition())
retrieveTestCaseDescriptions(AdditionTCPartial())
}
\keyword{ programming }
\keyword{ utilities }
\concept{ code evaluation mode }
