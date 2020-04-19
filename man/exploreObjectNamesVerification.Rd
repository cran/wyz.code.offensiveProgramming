\name{exploreObjectNamesVerification}
\alias{exploreObjectNamesVerification}
\title{
Verify object names}
\description{
Human readable output synthetized from
\bold{\emph{\code{\link{verifyObjectNames}}}}
}
\usage{
exploreObjectNamesVerification(object_o_1,
                               what_s_1 = c("names", "return type", "test cases", "*")[1])
}
\arguments{
  \item{object_o_1}{ the \emph{\code{object}} to be checked }
  \item{what_s_1}{ a single \emph{\code{string}} that expresses what you want to focus on, should start
  by one of \code{[nrt*} character. Star means show all. }
}
\value{
The same value as \bold{\emph{\code{\link{verifyObjectNames}}}} is returned
in \code{invisible} mode.

It adds \code{stdout} output to give very short synthesis about object names and content.
}
\author{
\packageAuthor{wyz.code.offensiveProgramming}

Maintainer: \packageMaintainer{wyz.code.offensiveProgramming}
}
\seealso{
Refer to \bold{\emph{\code{\link{verifyClassName}}}} and
\bold{\emph{\code{\link{verifyFunctionName}}}}.
}
\examples{
##---- typical case ----
library('data.table')
source(system.file('code-samples/frt-defs/good/full/AdditionFI.R',
                   package = 'wyz.code.offensiveProgramming'))
fi <- AdditionFI()
exploreObjectNamesVerification(fi)
}
\keyword{ programming }
\keyword{ utilities }
\concept{ code evaluation mode }
