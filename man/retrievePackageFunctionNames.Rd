\name{retrievePackageFunctionNames}
\alias{retrievePackageFunctionNames}
\title{
Retrieve Package Function Names
}
\description{
Get the function names from a package name
}
\usage{
retrievePackageFunctionNames(packageName_s_1, libraryPath_s_1 = .libPaths()[1])
}
\arguments{
  \item{packageName_s_1}{ a \emph{\code{string}} that is the package name to seek for }
  \item{libraryPath_s_1}{ a \emph{\code{string}} that is the folder to scrutinize }
}
\value{
A \emph{\code{vector}} of function names
}
\author{
\packageAuthor{wyz.code.offensiveProgramming}

Maintainer: \packageMaintainer{wyz.code.offensiveProgramming}
}
\examples{
# take to much time on Windows apparently to pass CRAN package acceptance tests
if (.Platform$OS.type == "unix")
  retrievePackageFunctionNames('wyz.code.offensiveProgramming')
}

