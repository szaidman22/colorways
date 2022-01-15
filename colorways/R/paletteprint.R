#' Prints all palettes
#' @export
paletteprint <- function() {
  bordercolor <- "black"
  x <- c(-8,27)
  y <- c(0,(length(palettes)*3))
  i <- (length(palettes)*3)
  n <- 1
  plot(1, type="n", xlab="", ylab="", xlim=x, ylim=y,axes=FALSE, frame.plot=FALSE)
  for (p in palettes) {
    rect(0,i,3,i-1, col = p[1], border = bordercolor, lwd = 2)
    rect(3,i,6,i-1, col = p[2], border = bordercolor, lwd = 2)
    rect(6,i,9,i-1, col = p[3], border = bordercolor, lwd = 2)
    rect(9,i,12,i-1, col = p[4], border = bordercolor, lwd = 2)
    rect(12,i,15,i-1, col = p[5], border = bordercolor, lwd = 2)
    rect(15,i,18,i-1, col = p[6], border = bordercolor, lwd = 2)
    rect(18,i,21,i-1, col = p[7], border = bordercolor, lwd = 2)
    rect(21,i,24,i-1, col = p[8], border = bordercolor, lwd = 2)
    rect(24,i,27,i-1, col = p[9], border = bordercolor, lwd = 2)
    text(x = -8, y = i-.5, # Coordinates
         label = names(palettes[n]), pos =4)
    i = i-3
    n= n+1
  }
}

