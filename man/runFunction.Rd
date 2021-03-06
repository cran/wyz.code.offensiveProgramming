\name{runFunction}
\alias{runFunction}
\title{
Run a \emph{\code{function}}}
\description{
Run a function from an object, according to the mentioned evaluation mode, and to the
chosen type factory}
\usage{
runFunction(object_o_1, functionName_s_1, arguments_l, evaluationMode_o_1)
}
\arguments{
  \item{object_o_1}{the  \emph{\code{object}} to consider}
  \item{functionName_s_1}{ a single \emph{\code{string}} that is the name of the function to run}
  \item{arguments_l}{ a \emph{\code{list}} of arguments to pass to the function}
  \item{evaluationMode_o_1}{ an evaluation mode \emph{\code{object}}. See
  \bold{\emph{\code{\link{EvaluationMode}}}}}
}
\value{
A \code{list} with names
\item{status}{ a single \emph{\code{boolean}}. Always \emph{\code{TRUE}} when evaluation mode is \bold{\code{standard_R_evaluation}}. Otherwise, will reflect result validity in the chose evaluation mode. }
\item{value}{the result of the computation, might be a scalar or not, a warning, an error, ... }
\item{mode}{the evaluation mode used to check the results}
\item{function_return_type_check}{available if mode is different of \bold{\code{standard_R_evaluation}} }
\item{parameter_type_checks}{available if mode is \bold{\code{type_checking_inforcement}} }
}
\author{
\packageAuthor{wyz.code.offensiveProgramming}

Maintainer: \packageMaintainer{wyz.code.offensiveProgramming}
}
\seealso{
Refer to  \bold{\emph{\code{\link{FunctionParameterTypeFactory}}}} and
\bold{\emph{\code{\link{runFunction}}}}.
}
\examples{
##---- typical case ----
library('data.table')
source(system.file('code-samples/frt-defs/good/full/AdditionFI.R',
                   package = 'wyz.code.offensiveProgramming'))
fi <- AdditionFI()
runFunction(fi, 'addDouble', list(34, 44.6), EvaluationMode(defineEvaluationModes()[1]))
runFunction(fi, 'addDouble', list(34, 44.6), EvaluationMode(defineEvaluationModes()[2]))
runFunction(fi, 'addDouble', list(34, 44.6), EvaluationMode(defineEvaluationModes()[3]))
}
\keyword{ programming }
\keyword{ utilities }
\concept{ code evaluation mode }
