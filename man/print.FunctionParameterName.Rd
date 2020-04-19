\name{print.FunctionParameterName}
\alias{print.FunctionParameterName}
\title{
Print generic method for S3 class \bold{\emph{\code{\link{FunctionParameterName}}}}
}
\description{
Prints the \code{FunctionParameterName} data
}
\usage{
\method{print}{FunctionParameterName}(x, ...)
}
\arguments{
  \item{x}{
    the \code{FunctionParameterName} \emph{\code{object}}  to consider
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
fn <- FunctionParameterName('x_s')
print(fn)
}
\keyword{ classes }
