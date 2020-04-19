\name{getObjectClassNames}
\alias{getObjectClassNames}
\alias{hasMainClass}
\title{Retrieve Function Arguments.}
\description{
Retrieve the class names of an object (
see \bold{\emph{\code{is.object}}}).
)
}
\usage{
getObjectClassNames(object_o_1)
hasMainClass(object_o_1, classname_s_1)
}
\arguments{
\item{object_o_1}{ the \emph{\code{object}} to analyze. }
\item{classname_s_1}{ a \emph{\code{string}} that is the class name to match
the \emph{\code{classname}} entry
returned by  \emph{\code{\link{getObjectClassNames}}}. }
}
\value{
A \emph{\code{list}} with two character entries. First one is named
\emph{\code{classname}},
provides the main classname (the one found in first position). Second one is named
\emph{\code{classnames}}, provides all the class names born by the
\emph{\code{object}}.
}
\author{
\packageAuthor{wyz.code.offensiveProgramming}

Maintainer: \packageMaintainer{wyz.code.offensiveProgramming}
}
\examples{
# typical test
getObjectClassNames(getObjectClassNames(factor(letters[1:3])))
#$classname
#[1] "factor"

#$classnames
#[1] "factor"

# another test
getObjectClassNames(new.env())
#$classname
#[1] NA

#$classnames
#[1] "environment"

}
