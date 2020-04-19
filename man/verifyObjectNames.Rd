\name{verifyObjectNames}
\alias{verifyObjectNames}
\title{Verify Object Names}
\description{
Verify object class name, object function names, and object function parameter names,
and provides a synthesis of executed checks.

Proceeds also to some introspection on \emph{\code{object}} to identify instrumentation of function
return types and test case definitions. Provides information about completeness of instruction,
and about missing functions and test cases.
}
\usage{
verifyObjectNames(object_o_1)
}
\arguments{
  \item{object_o_1}{ the object to be checked }
}
\value{
A \emph{\code{list}} with following names
\item{class_name}{the class name of the provided \emph{\code{object}}. }
\item{supports_strict_compliance}{a single \emph{\code{boolean}}.}
\item{supports_lazy_compliance}{a single \emph{\code{boolean}}.}
\item{class_name_compliance}{a \emph{\code{boolean}} value expression class name compliance}
\item{class_name_compliance}{a \emph{\code{vector}} of \emph{\code{booleans}}, where names are the function names
and values express the name compliance }
\item{class_name_compliance}{a \emph{\code{data.table}} exposing the name compliance and the semanting name compliance
for each paramter}
\item{owns_function_return_type_information}{a single \emph{\code{boolean}}}
\item{can_be_type_checked}{a single \emph{\code{boolean}}}
\item{is_function_fully_instrumented}{a single \emph{\code{boolean}}}
\item{missing_function}{a \emph{\code{vector}} of uninstrumented function names}
\item{owns_test_case_definitions}{a single \emph{\code{boolean}}}
\item{is_test_case_fully_instrumented}{a single \emph{\code{boolean}}}
\item{missing_test_cases}{a single \emph{\code{boolean}}}
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
print(verifyObjectNames(fi))
}
\keyword{ programming }
\keyword{ utilities }
\concept{ code evaluation mode }
