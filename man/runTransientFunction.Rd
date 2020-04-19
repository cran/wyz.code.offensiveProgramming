\name{runTransientFunction}
\alias{runTransientFunction}
\title{ Run Transient Function }
\description{ Run a function in a transient (non persistent) context. }
\usage{
runTransientFunction(function_f_1,
                     arguments_l,
                     evaluationMode_o_1,
                     function_return_type_s_1)
}
\arguments{
  \item{function_f_1}{ a single \R \emph{\code{function}} }
  \item{arguments_l}{ a \emph{\code{list}} of arguments to pass to the function}
  \item{evaluationMode_o_1}{ an evaluation mode \emph{\code{object}}. See
  \bold{\emph{\code{\link{EvaluationMode}}}}}
  \item{function_return_type_s_1}{ a \emph{\code{string}} that is a semantic parameter name,
  to express expected function return type}
}
\value{
A \code{list} with names
\item{status}{ a single \emph{\code{boolean}}. Always \emph{\code{TRUE}} when evaluation mode is
\bold{\code{standard_R_evaluation}}.
Otherwise, will reflect result validity in the chose evaluation mode. }
\item{value}{the result of the computation, might be a scalar or not, a warning, an error, ... }
\item{mode}{the evaluation mode used to check the results}
\item{function_return_type_check}{available if mode is different of
\bold{\code{standard_R_evaluation}} }
\item{parameter_type_checks}{available if mode is \bold{\code{type_checking_inforcement}} }
}
\author{
\packageAuthor{wyz.code.offensiveProgramming}

Maintainer: \packageMaintainer{wyz.code.offensiveProgramming}
}
\seealso{
Refer to \bold{\emph{\code{\link{runFunction}}}}.
}
\examples{
##---- typical case ----
em <- EvaluationMode(defineEvaluationModes()[3])
h <- function(x_s) x_s
runTransientFunction(h, list('neonira'), em, 'x_s')
runTransientFunction(h, list(pi), em, 'x_s')
runTransientFunction(h, list(pi), em, 'x_d')
}
\keyword{ programming }
\keyword{ utilities }
\concept{ code evaluation mode }