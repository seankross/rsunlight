#' Capitol words dates.json method. Search the congressional record for
#' instances of a word or phrase over time.
#'
#' @import httr
#' @template cw
#' @template cw_dates_text
#' @param page_id Page id.
#' @param n Size, not sure what this is.
#' @param percentages Include the percentage of mentions versus total words in
#'    the result objects. Valid values: 'true', 'false' (default) (character)
#' @param mincount Only return results where mentions are at or above the supplied threshold
#' @param granularity The length of time covered by each result. Valid values:
#'    'year', 'month', 'day' (default)
#' @param entity_type The entity type to get top phrases for. One of 'date', 'month', 'state', or 
#'    'legislator'. 
#' @param entity_value The value of the entity given in \code{entity_type}. See Details.
#' @return Data frame of observations by date.
#' @export
#' @details
#' Formats for \code{entity_value} parameter are as follows: 
#' 
#' \itemize{
#'  \item date: 2011-11-09
#'  \item month: 201111
#'  \item state: NY
#'  \item legislator (bioguide id): L000551
#' }
#' @examples \dontrun{
#' cw_dates(phrase='I would have voted', start_date='2001-01-20',
#'    end_date='2009-01-20', granularity='year', party='D')
#'    
#' cw_dates(phrase='united states', entity_type='state',
#'    entity_value='VA', granularity='year', party='D')
#'    
#' cw_dates(phrase='voting', start_date='2009-01-01',
#'    end_date='2009-04-30', granularity='month', party='R')  
#' }
cw_dates <- function(phrase = NULL, title = NULL, date = NULL, start_date = NULL,
  end_date = NULL, chamber = NULL, state = NULL, party = NULL, bioguide_id = NULL,
  congress = NULL, session = NULL, cr_pages = NULL, volume = NULL, page_id = NULL,
  n = NULL, mincount = NULL, granularity = NULL, percentages = 'true', entity_type = NULL,
  entity_value = NULL,
  key=getOption("SunlightLabsKey", stop("need an API key for Sunlight Labs")),
  callopts = list())
{
  url = "http://capitolwords.org/api/dates.json"
  args <- suncompact(list(apikey = key, phrase = phrase, title = title,
        date = date, start_date = start_date, end_date = end_date,
        chamber = chamber, state = state, party = party,
        bioguide_id = bioguide_id, congress = congress,
        session = session, cr_pages = cr_pages, volume = volume,
        page_id = page_id, n = n, mincount = mincount, granularity = granularity,
        percentages = percentages, entity_type=entity_type, entity_value=entity_value))
  tt <- GET(url, query=args, callopts)
  stop_for_status(tt)
  out <- content(tt, as = "text")
  output <- fromJSON(out, simplifyVector = FALSE)
  df <- rbind.fill(lapply(output[[1]], data.frame))
  return( df )
}
