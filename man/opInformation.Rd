\name{opInformation}
\alias{opInformation}
\title{
Package functions information
}
\description{
A reminder of available functions from this package, and, most common usage
intent. A poor man \emph{\code{CLI}} cheat sheet.
}
\usage{
opInformation()
}
\value{
A \emph{\code{data.table}} with following columns
\item{name}{the object name}
\item{category}{the category of the object describe by function name. Could be
\bold{\code{CLASS}}, \bold{\code{FUNCTION}} or \bold{\code{DATA}}.}
\item{nature}{either \bold{\code{INTERNAL}} or \bold{\code{EXPORTED}}.}
\item{stratum}{the stratum the object belongs to. Values are \bold{\code{CORE}},
\bold{\code{LAYER_1}}, \bold{\code{LAYER_2}}, \bold{\code{LAYER_3}}.}
\item{phasing}{main usage phase of the object. Values are \bold{\code{DESIGN}},
\bold{\code{BUILD}}, \bold{\code{TEST}}, \bold{\code{RUN}}, \bold{\code{MAINTAIN}},
\bold{\code{EVOLVE}} and \bold{\code{TRANSVERSAL}}.}
\item{intent}{main global intent of the object. Values are \bold{\code{PARTS_BUILDING}},
\bold{\code{PARTS_ASSEMBLY}}, \bold{\code{QUALITY_CONTROL}}, \bold{\code{FEEDBACK}},
\bold{\code{STATISTICS}}, \bold{\code{CONTENT_GENERATION}} and \bold{\code{UTILITIES}}.}
}
\author{
\packageAuthor{wyz.code.offensiveProgramming}

Maintainer: \packageMaintainer{wyz.code.offensiveProgramming}
}
\seealso{
Refer also to package vignettes.
}
\examples{
##---- typical case ----
opInformation()
}
\keyword{ programming }
\keyword{ utilities }
\concept{ code evaluation mode }
