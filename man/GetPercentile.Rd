\name{GetPercentile}
\alias{GetPercentile}
\title{
Pass in a score, say which test it's from, get a percentile
}
\description{
Uses by default the 2015-2016 GRE score table.
}
\usage{
GetPercentile(score, type = c("Verbal", "Quantitative", "Analytical"), scores.VQ = NULL, scores.A = NULL)
}
\arguments{
  \item{score}{
The raw score
}
  \item{type}{
Which kind of test the score is for. Any abbreviation is fine.
}
  \item{scores.VQ}{
Data.frame with Score, Verbal, and Quantitative columns; if NULL, uses the 2015-2016 table.
}
  \item{scores.A}{
Data.frame with Score and Analytical columns; if NULL, uses the 2015-2016 table.
}
}

\value{
Returns a percentile
}
\references{
https://www.ets.org/gre/institutions/scores/interpret
}
\author{
Brian O'Meara
}
\note{
This is not associated with ETS, GRE, or any other entities. Use at your own risk.
}
