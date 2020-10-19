\name{CMSgps}
\alias{CMSgps}
\title{CMSgps}
\usage{
CMSgps(Exp)
}
\arguments{
  \item{Exp}{a dataframe with Gene Expression Profiles data values, samples in columns, genes in rows, rownames corresponding to Entrez IDs}
}
\description{
Classfying Consensus Molecular Subtypes (CMS) of Colorectal Cancer.
}
\examples{
CMS_label=CMSgps(Exp)[,5]
}
