% Generated by roxygen2 (4.0.0): do not edit by hand
\name{ie_faca}
\alias{ie_faca}
\title{Search for itemized Federal Advisory Committee memberships.}
\usage{
ie_faca(affiliation = NULL, agency_name = NULL, committee_name = NULL,
  member_name = NULL, year = NULL, page = NULL, per_page = NULL,
  key = getOption("SunlightLabsKey",
  stop("need an API key for Sunlight Labs")), callopts = list())
}
\arguments{
\item{affiliation}{(character) The name of the affiliated organization.}

\item{agency_name}{(character) The name of the agency associated with the committee.}

\item{committee_name}{(character) The name of the advisory committee.}

\item{member_name}{(character) Full-text search on the name of the affiliated organization.}

\item{year}{(integer) The YYYY-formatted year(s) the member sat on the committee.}

\item{page}{The page of results to return; defaults to 1.}

\item{per_page}{The number of results to return per page, defaults to 1,000.
The maximum number of records per page is 100,000.}

\item{key}{your SunlightLabs API key; loads from .Rprofile}

\item{callopts}{Optional additional curl options (debugging tools mostly)}
}
\value{
A list, as class ie_faca.
}
\description{
Search for itemized Federal Advisory Committee memberships.
}
\examples{
\dontrun{
ie_faca(member_name='Francis Collins', per_page=1)
ie_faca(agency_name='DOC', per_page=3)
ie_faca(affiliation='U.S. House of Representatives', per_page=3)
ie_faca(year=2011, per_page=1)
ie_faca(committee_name='2010 Census Advisory Committee', per_page=1)
}
}

