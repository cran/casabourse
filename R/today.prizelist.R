#Get today market prize list receive 'up' or 'down'
#' today.prizelist
#'
#' @param up_or_down rise or fall prize list
#'
#' @return data.frame
#' @description It receives '' up '' or '' down '' respectively and returns a table prizelist of rising or falling prices of market instruments
#' @examples today.prizelist('up')
#' @export
today.prizelist=function(up_or_down){
  if(up_or_down=="up"){
    palup=gsheet::gsheet2tbl("https://docs.google.com/spreadsheets/d/13QVauapLls-SxlZlRKPaY1935HLLSD3yNj8L6bbGH3Q/edit?usp=sharing")
    palup=palup[order(palup$Valeur),]
    return(palup)
  }
  else if(up_or_down=="down"){
    paldown=gsheet::gsheet2tbl("https://docs.google.com/spreadsheets/d/1r2gt_n9tSyZkk7UJUQanM4BQaecCn4eVhpV4V08tm1o/edit?usp=sharing")
    paldown=paldown[order(paldown$Valeur),]
    return(paldown)
  }
  else{
    print("today.prizelist('up') or today.prizelist('down')")

  }
}
