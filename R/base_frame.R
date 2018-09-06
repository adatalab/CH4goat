#' base_frame
#'
#' This function make base frame for input data.
#' @keywords deep learning goat methane
#' @export
#' @examples
#' base_frame(model=1)
#' base_frame(model=2)
 
base_frame <- function(model=1) {
  if(model==1) {
    assign("base_frame",
           data.frame(DMI=NA,OMI=NA,CPI=NA,NDFI=NA,DDMI=NA,DOMI=NA,DCPI=NA,DNDFI=NA),
           envir = globalenv()
    )
  }
  if(model==2) {
    assign("base_frame",
           data.frame(DMI=NA,OMI=NA,CPI=NA,NDFI=NA),
           envir = globalenv()
    )
  }
  
  print("A system made example data frame. An unit is g/d")
}
