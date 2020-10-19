\name{missingValue}
\alias{missingValue}
\title{missingValue}
\usage{
Exp=missingValue(Exp,G)
}
\arguments{
  \item{Exp}{a dataframe with Gene Expression Profiles data values, samples in columns, genes in rows, rownames corresponding to Entrez IDs}
  \item{G}{unique genes in gene pairs}
}
\description{
Imputing the missing values.
}
\examples{
Exp=missingValue(Exp,G)
}
