\name{retrieveFunctionReturnTypes}
\alias{retrieveFunctionReturnTypes}
\title{ Retrieve function return types }
\description{
Retrieve the function return type definitions from an \emph{\code{object}}.
}
\usage{
retrieveFunctionReturnTypes(object_o_1)
}
\arguments{
  \item{object_o_1}{the \code{object} to consider}
}
\value{
A polymorphic return that is either
\item{a \code{list}}{as returned by the \code{\link{verifyObjectNames}} function}
\item{another \code{list}}{as returned by the \code{\link{verifyFunctionReturnTypesDefinition}} function}
\item{a \code{data.table}}{the function parameter types definition as declared in the source class}
}
\author{
\packageAuthor{wyz.code.offensiveProgramming}

Maintainer: \packageMaintainer{wyz.code.offensiveProgramming}
}
\seealso{
Refer to \bold{\emph{\code{\link{defineEvaluationModes}}}}.
}
\examples{
##---- typical case ----
library('data.table')
source(system.file('code-samples/no-defs/Addition.R',
                   package = 'wyz.code.offensiveProgramming'))
source(system.file('code-samples/frt-defs/good/full/AdditionFI.R',
                   package = 'wyz.code.offensiveProgramming'))
retrieveFunctionReturnTypes(AdditionFI()) # works, renders a data.table
retrieveFunctionReturnTypes(Addition()) # fails, renders a list
}
\keyword{ programming }
\keyword{ utilities }
\concept{ code evaluation mode }
