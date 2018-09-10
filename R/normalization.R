#' normalization
#'
#' A function normalization.
#' @keywords deep learning goat methane
#' @export
#' @examples
#' normalization(data=example1, model1)

normalization <- function(data, model) {
  # func
  normalize1 <- function(x){
    return((x-min(minmax))/(max(minmax)-min(minmax)))
  }
  
  normalize2 <- function(x){
    return((x-min(minmax[,1:4]))/(max(minmax[,1:4])-min(minmax[,1:4])))
  }
  
  # if
  if(model==1) {
    nor <- as.data.frame(lapply(data, normalize1))
    return(nor)
  }
  if(model==2) {
    nor <- as.data.frame(lapply(data, normalize2))
    return(nor)
  }
}