% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGeneric.R, R/DemographicAccount-methods.R,
%   R/DemographicArray-methods.R
\name{population}
\alias{population}
\alias{population,DemographicAccount-method}
\alias{population,DemographicArray-method}
\title{Extract population counts from a demographic account.}
\usage{
population(object)

\S4method{population}{DemographicAccount}(object)

\S4method{population}{DemographicArray}(object)
}
\arguments{
\item{object}{An object of class \code{\linkS4class{DemographicAccount}}.}
}
\value{
A \code{\linkS4class{Counts}} object.
}
\description{
A \code{\link[=DemographicAccount-class]{demographic account}} contains
counts of population, plus one or more components such as births,
deaths, or internal migration.  \code{population} can be used to
extract the population counts.
}
\examples{
population <- Counts(array(c(10, 15, 13, 16),
                           dim = c(2, 2),
                           dimnames = list(age = c("0-29", "30+"),
                                           time = c(1970, 2000))))
births <- Counts(array(13,
                       dim = c(1, 1),
                       dimnames = list(age = "30+",
                                       time = "1971-2000")))
deaths <- Counts(array(c(0, 9),
                       dim = c(2, 1),
                       dimnames = list(age = c("0-29", "30+"),
                                       time = c("1971-2000"))))
account <- Movements(population = population,
                     births = births,
                     exits = list(deaths = deaths))

population(account)
}
\seealso{
Counts for components can be extracted using function
\code{\link{components}}.
}
