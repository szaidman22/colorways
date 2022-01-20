# Makes scatter plot to view colors for chosen palette

colorscatter <- function(number = 3, palette = donut, shuffle = "no"){

  if (shuffle == "no") {
    c <- colordisplay(palette = palette)
  }

  else {
    c <- colordisplay(palette, shuffle = "yes")
  }

  if (number ==2) {

    names <- c[1:2]
    title <- paste(names, collapse = ", ")

    regions <- c("a","b")
    x <- matrix(c(5,3,2,1,6,5,4,
                  6,5,4,10,6,3,7,
                  13,10,17,11,13,19,15,
                  11,15,10,14,12,7,12,
                  15,11,15,17,8,9,12,
                  12,11,15,16,13,14,18,
                  16,17,14,19,20,19,15),
                nrow = 7, ncol = 7, byrow = TRUE)
    y <- matrix(c(8,6,2,5,4,3,6,
                  7,2,5,4,9,3,6,
                  14,15,15,14,17,18,16,
                  12,18,13,12,10,9,12,
                  11,10,15,13,12,11,15,
                  7,3,5,3,6,7,5,
                  6,7,8,8,10,11,12), nrow = 7, ncol = 7, byrow = TRUE)
    plot(x, y, col = c[1:2],  pch = 20,cex=3,xlab=title, main = "2 Color Scatterplot")
    legend("topleft",
           legend = factor(regions),
           col = c[1:2],
           pch = 20,
           bty = "n",
           pt.cex = 3,
           text.col = "black",
           horiz = F)

    return(title)
  }

  else if (number ==3) {

    names <- c[1:3]
    title <- paste(names, collapse = ", ")

    regions <- c("a","b","c")
    x <- matrix(c(5,3,2,1,6,5,4,
                  6,5,4,10,6,3,7,
                  13,10,17,11,13,19,15,
                  11,15,10,14,12,7,12,
                  15,11,15,17,8,9,12,
                  12,11,15,16,13,14,18,
                  16,17,14,19,20,19,15),
                nrow = 7, ncol = 7, byrow = TRUE)
    y <- matrix(c(8,6,2,5,4,3,6,
                  7,2,5,4,9,3,6,
                  14,15,15,14,17,18,16,
                  12,18,13,12,10,9,12,
                  11,10,15,13,12,11,15,
                  7,3,5,3,6,7,5,
                  6,7,8,8,10,11,12), nrow = 7, ncol = 7, byrow = TRUE)
    plot(x, y, col = c[1:3],  pch = 20,cex=3,xlab=title, main = "3 Color Scatterplot")
    legend("topleft",
           legend = factor(regions),
           col = c[1:3],
           pch = 20,
           bty = "n",
           pt.cex = 3,
           text.col = "black",
           horiz = F)

    return(title)
  }

  else if (number ==4) {

    names <- c[1:4]
    title <- paste(names, collapse = ", ")

    regions <- c("a","b","c","d")
    x <- matrix(c(5,3,2,1,6,5,4,
                  6,5,4,10,6,3,7,
                  13,10,17,11,13,19,15,
                  11,15,10,14,12,7,12,
                  15,11,15,17,8,9,12,
                  12,11,15,16,13,14,18,
                  16,17,14,19,20,19,15),
                nrow = 7, ncol = 7, byrow = TRUE)
    y <- matrix(c(8,6,2,5,4,3,6,
                  7,2,5,4,9,3,6,
                  14,15,15,14,17,18,16,
                  12,18,13,12,10,9,12,
                  11,10,15,13,12,11,15,
                  7,3,5,3,6,7,5,
                  6,7,8,8,10,11,12), nrow = 7, ncol = 7, byrow = TRUE)
    plot(x, y, col = c[1:4],  pch = 20,cex=3,xlab=title, main = "4 Color Scatterplot")
    legend("topleft",
           legend = factor(regions),
           col = c[1:4],
           pch = 20,
           bty = "n",
           pt.cex = 3,
           text.col = "black",
           horiz = F)

    return(title)
  }

  else if (number ==5) {

    names <- c[1:5]
    title <- paste(names, collapse = ", ")

    regions <- c("a","b","c","d","e")
    x <- matrix(c(5,3,2,1,6,5,4,
                  6,5,4,10,6,3,7,
                  13,10,17,11,13,19,15,
                  11,15,10,14,12,7,12,
                  15,11,15,17,8,9,12,
                  12,11,15,16,13,14,18,
                  16,17,14,19,20,19,15),
                nrow = 7, ncol = 7, byrow = TRUE)
    y <- matrix(c(8,6,2,5,4,3,6,
                  7,2,5,4,9,3,6,
                  14,15,15,14,17,18,16,
                  12,18,13,12,10,9,12,
                  11,10,15,13,12,11,15,
                  7,3,5,3,6,7,5,
                  6,7,8,8,10,11,12), nrow = 7, ncol = 7, byrow = TRUE)
    plot(x, y, col = c[1:5],  pch = 20,cex=3,xlab=title, main = "5 Color Scatterplot")
    legend("topleft",
           legend = factor(regions),
           col = c[1:5],
           pch = 20,
           bty = "n",
           pt.cex = 3,
           text.col = "black",
           horiz = F)

    return(title)
  }

  else if (number ==6) {

    names <- c[1:6]
    title <- paste(names, collapse = ", ")

    regions <- c("a","b","c","d","e","f")
    x <- matrix(c(5,3,2,1,6,5,4,
                  6,5,4,10,6,3,7,
                  13,10,17,11,13,19,15,
                  11,15,10,14,12,7,12,
                  15,11,15,17,8,9,12,
                  12,11,15,16,13,14,18,
                  16,17,14,19,20,19,15),
                nrow = 7, ncol = 7, byrow = TRUE)
    y <- matrix(c(8,6,2,5,4,3,6,
                  7,2,5,4,9,3,6,
                  14,15,15,14,17,18,16,
                  12,18,13,12,10,9,12,
                  11,10,15,13,12,11,15,
                  7,3,5,3,6,7,5,
                  6,7,8,8,10,11,12), nrow = 7, ncol = 7, byrow = TRUE)
    plot(x, y, col = c[1:6],  pch = 20,cex=3,xlab=title, main = "6 Color Scatterplot")
    legend("topleft",
           legend = factor(regions),
           col = c[1:6],
           pch = 20,
           bty = "n",
           pt.cex = 3,
           text.col = "black",
           horiz = F)

    return(title)
  }

  else if (number ==7) {

    names <- c[1:7]
    title <- paste(names, collapse = ", ")

    regions <- c("a","b","c","d","e","f","g")
    x <- matrix(c(5,3,2,1,6,5,4,
                  6,5,4,10,6,3,7,
                  13,10,17,11,13,19,15,
                  11,15,10,14,12,7,12,
                  15,11,15,17,8,9,12,
                  12,11,15,16,13,14,18,
                  16,17,14,19,20,19,15),
                nrow = 7, ncol = 7, byrow = TRUE)
    y <- matrix(c(8,6,2,5,4,3,6,
                  7,2,5,4,9,3,6,
                  14,15,15,14,17,18,16,
                  12,18,13,12,10,9,12,
                  11,10,15,13,12,11,15,
                  7,3,5,3,6,7,5,
                  6,7,8,8,10,11,12), nrow = 7, ncol = 7, byrow = TRUE)
    plot(x, y, col = c[1:7],  pch = 20,cex=3,xlab=title, main = "7 Color Scatterplot")
    legend("topleft",
           legend = factor(regions),
           col = c[1:7],
           pch = 20,
           bty = "n",
           pt.cex = 3,
           text.col = "black",
           horiz = F)

    return(title)
  }

  else {
    print("please choose a number between 2 and 7")
  }
}
