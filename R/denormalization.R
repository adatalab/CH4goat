#' denormalization
#'
#' A function for back_normalization.
#' @keywords deep learning goat methane
#' @export
#' @examples
#' neuralnet::compute(model1,example1)
#' denormalization(data=example1$net.result)

denormalization <- function(data){
  denormalized <- data*(max(minmax$CH4)-min(minmax$CH4)) + min(minmax$CH4)
  return(denormalized)
}


