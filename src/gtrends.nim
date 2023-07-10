import pkg/rss

type
  TrendingSearches* = ref object
    ## Daily trending terms of Google Trends
    geo*: string
    searches*: seq[TrendingSearch]
  TrendingSearch* = ref object
    title*, googleTrendsUrl*, description*: string
    pubDate*: string

proc getDailyTrending*(geo = "US"): TrendingSearches =
  ## Get trending terms in Google Trends
  new result
  let rss = getRSS "https://trends.google.com/trends/trendingsearches/daily/rss?geo=" & geo
  result.geo = geo
  for item in rss.items:
    var search = new TrendingSearch 
    search.title = item.title
    search.googleTrendsUrl = item.link
    search.description = item.description
    search.pubDate = item.pubDate
    result.searches.add search

when isMainModule:
  import json
  echo pretty %*getDailyTrending()[]
