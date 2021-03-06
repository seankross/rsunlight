% Generated by roxygen2 (4.0.0): do not edit by hand
\name{os_billlookup}
\alias{os_billlookup}
\title{Lookup bills on OpenStates.}
\usage{
os_billlookup(state = NULL, session = NULL, bill_id = NULL,
  key = getOption("SunlightLabsKey",
  stop("need an API key for Sunlight Labs")), callopts = list())
}
\arguments{
\item{key}{your SunlightLabs API key; loads from .Rprofile}

\item{callopts}{Optional additional curl options (debugging tools mostly)}

\item{state}{state two-letter abbreviation (character), required}

\item{session}{session of congress (integer), e.g., 2009-2010 = 20092010,
required}

\item{bill_id}{One or more identification numbers of bills (character), required}
}
\value{
List of output fields.
}
\description{
Lookup bills on OpenStates.
}
\examples{
\dontrun{
os_billlookup(state='ca', session=20092010, bill_id='AB 667')
os_billlookup(state='ca', session=20092010, bill_id='SB 425')
os_billlookup(state='ca', session=20092010, bill_id=c('AB 667','SB 425'))
}
}

