#' denormalization
#'
#' A function for back_normalization.
#' @keywords deep learning goat methane
#' @export
#' @examples
#' neuralnet::compute(model1,example1)
#' denormalization(data=example1$net.result)

denormalization <- function(data) {
  back_normalize <- function(x) {
    return(x*(max(minmax$CH4)-min(minmax$CH4))+(min(minmax$CH4)))
  }
  data <- data.frame(CH4=data)
  back_nor <- as.data.frame(lapply(data,back_normalize))
  return(back_nor)
}
