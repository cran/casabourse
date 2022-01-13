#GET today market high,low...
#' today.market
#'
#'
#' @return data.frame
#' @description is without argument and returns the current price of financial instruments as well as their variations, their opening prices, their max etc.
#' @examples today.market()
#' @export
today.market=function(){
  return(gsheet::gsheet2tbl("https://docs.google.com/spreadsheets/d/1WKZphnEyC7RcSbfY_4d3kCRoEskCGY1umKOwMqoaHqM/edit?usp=sharing"))
}
