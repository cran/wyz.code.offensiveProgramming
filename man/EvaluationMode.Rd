\name{EvaluationMode}
\alias{EvaluationMode}
\title{
Evaluation mode definition
}
\description{
Class to define your evaluation mode}
\usage{
EvaluationMode(value_s_1 = defineEvaluationModes()[2])
}
\arguments{
  \item{value_s_1}{ one \emph{\code{string}} that must come from
  \bold{\emph{\code{\link{defineEvaluationModes}}}}}
}
\value{
An \emph{\code{object}} that is an \R \code{environment}.
}
\author{
\packageAuthor{wyz.code.offensiveProgramming}

Maintainer: \packageMaintainer{wyz.code.offensiveProgramming}
}
\seealso{
Refer to \bold{\emph{\code{\link{defineEvaluationModes}}}}
}
\examples{
##---- typical case ----
EvaluationMode(defineEvaluationModes()[3])
}
\keyword{ programming }
\keyword{ utilities }
\concept{ code evaluation mode }
