\name{verifyFunctionReturnTypesDefinition}
\alias{verifyFunctionReturnTypesDefinition}
\title{ Verify Function Return Types Definition }
\description{
Verifies your declared return type definitions and detects anomalies.
}
\usage{
verifyFunctionReturnTypesDefinition(object_o_1,
                                    requiresFullInstrumentation_b_1 = TRUE)
}
\arguments{
  \item{object_o_1}{The \emph{\code{object}} to be considered}
  \item{requiresFullInstrumentation_b_1}{a \emph{\code{boolean}}
  stating if full instrumentation is required}
}
\details{
When \bold{\code{requiresFullInstrumentation_b_1}} is \emph{\code{TRUE}},
each function must have an entry in the test case parameter definition. }
\value{
A \emph{\code{list}} with names
\item{validity}{a single \emph{\code{boolean}} value}
\item{class}{the class name of the provided \emph{\code{object}}.}
\item{intent}{the stage of the failure, provides hint about the faced issue}
\item{message}{some hints to resolve the issue(s).}
}
\author{
\packageAuthor{wyz.code.offensiveProgramming}

Maintainer: \packageMaintainer{wyz.code.offensiveProgramming}
}
\seealso{
Refer to \bold{\emph{\code{\link{defineTestCaseDefinitionsParameterName}}}}.
}
\examples{
##---- typical case ----
library('data.table')
source(system.file('code-samples/frt-defs/good/full/AdditionFI.R',
                   package = 'wyz.code.offensiveProgramming'))
fi <- AdditionFI()
print(verifyFunctionReturnTypesDefinition(fi))
print(verifyFunctionReturnTypesDefinition(fi, FALSE))
}
\keyword{ programming }
\keyword{ utilities }
\concept{ code evaluation mode }
