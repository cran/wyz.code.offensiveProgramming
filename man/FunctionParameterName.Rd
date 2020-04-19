\name{FunctionParameterName}
\alias{FunctionParameterName}
\title{
Function parameter name
}
\description{
Class to define and handle a function parameter
}
\usage{
FunctionParameterName(name_s_1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{name_s_1}{ a \emph{\code{string}} that is the name of the parameter}
}
\details{
The name of the parameter should be a semantic name. A semantic name is a compound
string based on a special format allowing to distinguish by the name, the parameter type,
and to express some length constraints. }
\value{
An \emph{\code{object}} that is an \R \emph{\code{environment}}. Use functions
\bold{\emph{\code{isSemanticName}}},
\bold{\emph{\code{isPolymorphic}}}, \bold{\emph{\code{isEllipsis}}},
\bold{\emph{\code{isValid}}} to check the provided name.
Functions \bold{\emph{\code{get*}}} allows to retrieve parts of the name.
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
fpn <- FunctionParameterName('values_s_7m')
fpn$isPolymorphic()
fpn$isSemanticName()
fpn$isValid()
fpn$getTypeSuffix() # 's'
fpn$getLengthSpecification() # '7m'
fpn$getLengthSuffix() # 7
fpn$getLengthModifier() # 'm'

fpn <- FunctionParameterName('object_')
fpn$isPolymorphic()
fpn$isSemanticName()
fpn$isValid()
}
\keyword{ programming }
\keyword{ utilities }
\concept{ code evaluation mode }
