\name{identifyOPInstrumentationLevel}
\alias{identifyOPInstrumentationLevel}
\title{Identify Offensive Programming Instrumentation Level }
\description{
Provide short information about offensive programming instrumentation level
}
\usage{
identifyOPInstrumentationLevel(object_o_1 = NULL,
                               methodName_s_1 = NA_character_)
}
\arguments{
  \item{object_o_1}{ the \emph{\code{object}} to be checked }
  \item{methodName_s_1}{ the \emph{\code{function}} name to consider, if any. }
}
\value{
A \code{list} with following names
\item{offensive_programming}{a single \emph{\code{boolean}}}
\item{full_instrumentation}{a single \emph{\code{boolean}}}
\item{semantic_naming}{a single \emph{\code{boolean}}}
\item{function_return_type}{a single \emph{\code{boolean}}}
\item{test_case_definition}{a single \emph{\code{boolean}}}
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
identifyOPInstrumentationLevel(AdditionFI())

#$offensive_programming
#[1] TRUE

#$full_instrumentation
#[1] FALSE

#$semantic_naming
#[1] TRUE

#$function_return_type
#[1] TRUE

#$test_case_definition
#[1] FALSE
}
\keyword{ programming }
\keyword{ utilities }
\concept{ code evaluation mode }
