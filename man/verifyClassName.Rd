\name{verifyClassName}
\alias{verifyClassName}
\title{ Verify Class Name}
\description{
Verifies class name compliance with a policy.
}
\usage{
verifyClassName(name_s = "MyClassName", strictSyntax_b_1 = TRUE)
}
\arguments{
  \item{name_s}{ a \emph{\code{string}} that is the class name to be checked}
  \item{strictSyntax_b_1}{
A \emph{\code{boolean}} value. When \emph{\code{TRUE}}, allowed character set is \code{[A-Za-z0-9]+}. A
class name must start with an uppercase letter. The name is required to be camel cased,
although this cannot be checked.

When \emph{\code{FALSE}}, allowed character set is \code{[A-Za-z0-9_.]+}.
Classic \R class naming applies.}
}
\value{
\emph{\code{TRUE}} when name complies with policy, \emph{\code{FALSE}} otherwise.
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
verifyClassName('matrix')
verifyClassName('matrix', FALSE)
}
\keyword{ programming }
\keyword{ utilities }
\concept{ code evaluation mode }
