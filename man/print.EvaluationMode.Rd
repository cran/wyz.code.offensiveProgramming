\name{print.EvaluationMode}
\alias{print.EvaluationMode}
\title{
Print generic method for S3 class \bold{\emph{\code{\link{EvaluationMode}}}}
}
\description{
Prints the \emph{\code{EvaluationMode}} data
}
\usage{
\method{print}{EvaluationMode}(x, ...)
}
\arguments{
  \item{x}{
    the \code{EvaluationMode} \emph{\code{object}}  to consider
  }
  \item{\ldots}{
    any other argument, passed to print.
  }
}
\author{
  \packageAuthor{wyz.code.offensiveProgramming}

  Maintainer: \packageMaintainer{wyz.code.offensiveProgramming}
}
\examples{
b <- EvaluationMode(defineEvaluationModes()[2])
print(b)
}
\keyword{ classes }
