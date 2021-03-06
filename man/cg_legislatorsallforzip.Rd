% Generated by roxygen2 (4.0.0): do not edit by hand
\name{cg_legislatorsallforzip}
\alias{cg_legislatorsallforzip}
\title{Search congress people and senate members for a zip code.}
\usage{
cg_legislatorsallforzip(zip = NULL, key = getOption("SunlightLabsKey",
  stop("need an API key for Sunlight Labs")), callopts = list())
}
\arguments{
\item{zip}{zip code to search}

\item{key}{your SunlightLabs API key; loads from .Rprofile}

\item{callopts}{Optional additional curl options (debugging tools mostly)}
}
\value{
List of output fields.
}
\description{
Search congress people and senate members for a zip code.
}
\examples{
\dontrun{
cg_legislatorsallforzip(zip = 77006)
}
}

