#' normalization
#'
#' A function normalization.
#' @keywords deep learning goat methane
#' @export
#' @examples
#' normalization(data=example1)

normalization <- function(data){
  normalized <- data 
  for (n in names(data)){
    normalized[,n] <-  
      (data[,n] - min(minmax[,n])) /  (max(minmax[,n]) -  min(minmax[,n]))
  } 
  return(normalized)
}
