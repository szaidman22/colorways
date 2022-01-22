# Displays colors for a chosen palette

colordisplay <- function(palette, number = 9, bordercolor = "black", shuffle = "no") {

  if (shuffle == "yes"){
    shuff <- sample(seq(from = 1, to = length(palette), by = 1), size = length(palette), replace = FALSE)
  }

  else {
    shuff <- seq(1, length(palette), by=1)
  }

  if (number == 9) {
    names = c(palette[shuff[1]], palette[shuff[2]],palette[shuff[3]],palette[shuff[4]],palette[shuff[5]],palette[shuff[6]],palette[shuff[7]],palette[shuff[8]],palette[shuff[9]])
    title <- paste(names, collapse = ", ")
    x <- c(0,3)
    y <- c(7,10)
    plot(1, type="n", xlab="", ylab="", xlim=x, ylim=y,axes=FALSE, main = title, frame.plot=FALSE)
    rect(0,10,1,9, col = palette[shuff[1]], border = bordercolor, lwd = 4)
    rect(1,10,2,9, col = palette[shuff[2]], border = bordercolor, lwd = 4)
    rect(2,10,3,9, col = palette[shuff[3]], border = bordercolor, lwd = 4)
    rect(0,9,1,8, col = palette[shuff[4]], border = bordercolor, lwd = 4)
    rect(1,9,2,8, col = palette[shuff[5]], border = bordercolor, lwd = 4)
    rect(2,9,3,8, col = palette[shuff[6]], border = bordercolor, lwd = 4)
    rect(0,8,1,7, col = palette[shuff[7]], border = bordercolor, lwd = 4)
    rect(1,8,2,7, col = palette[shuff[8]], border = bordercolor, lwd = 4)
    rect(2,8,3,7, col = palette[shuff[9]], border = bordercolor, lwd = 4)
    return(title)
  }

  else if (number == 8) {
    names = c(palette[shuff[1]], palette[shuff[2]],palette[shuff[3]],palette[shuff[4]],palette[shuff[5]],palette[shuff[6]],palette[shuff[7]],palette[shuff[8]])
    title <- paste(names, collapse = ", ")
    x <- c(0,4)
    y <- c(8,10)
    plot(1, type="n", xlab="", ylab="", xlim=x, ylim=y,axes=FALSE, main=title, frame.plot=FALSE)
    rect(0,10,1,9, col = palette[shuff[1]], border = bordercolor, lwd = 4)
    rect(1,10,2,9, col = palette[shuff[2]], border = bordercolor, lwd = 4)
    rect(2,10,3,9, col = palette[shuff[3]], border = bordercolor, lwd = 4)
    rect(3,10,4,9, col = palette[shuff[4]], border = bordercolor, lwd = 4)
    rect(0,9,1,8, col = palette[shuff[5]], border = bordercolor, lwd = 4)
    rect(1,9,2,8, col = palette[shuff[6]], border = bordercolor, lwd = 4)
    rect(2,9,3,8, col = palette[shuff[7]], border = bordercolor, lwd = 4)
    rect(3,9,4,8, col = palette[shuff[8]], border = bordercolor, lwd = 4)
    return(title)
  }

  else if (number == 7) {
    names = c(palette[shuff[1]], palette[shuff[2]],palette[shuff[3]],palette[shuff[4]],palette[shuff[5]],palette[shuff[6]],palette[shuff[7]])
    title <- paste(names, collapse = ", ")
    x <- c(0,12)
    y <- c(8,10)
    plot(1, type="n", xlab="", ylab="", xlim=x, ylim=y,axes=FALSE, main=title, frame.plot=FALSE)
    rect(0,10,4,9, col = palette[shuff[1]], border = bordercolor, lwd = 4)
    rect(4,10,8,9, col = palette[shuff[2]], border = bordercolor, lwd = 4)
    rect(8,10,12,9, col = palette[shuff[3]], border = bordercolor, lwd = 4)
    rect(0,9,3,8, col = palette[shuff[4]], border = bordercolor, lwd = 4)
    rect(3,9,6,8, col = palette[shuff[5]], border = bordercolor, lwd = 4)
    rect(6,9,9,8, col = palette[shuff[6]], border = bordercolor, lwd = 4)
    rect(9,9,12,8, col = palette[shuff[7]], border = bordercolor, lwd = 4)

    return(title)
  }

  else if (number == 6) {
    names = c(palette[shuff[1]], palette[shuff[2]],palette[shuff[3]],palette[shuff[4]],palette[shuff[5]],palette[shuff[6]])
    title <- paste(names, collapse = ", ")
    x <- c(0,12)
    y <- c(8,10)
    plot(1, type="n", xlab="", ylab="", xlim=x, ylim=y,axes=FALSE, main=title, frame.plot=FALSE)
    rect(0,10,4,9, col = palette[shuff[1]], border = bordercolor, lwd = 4)
    rect(4,10,8,9, col = palette[shuff[2]], border = bordercolor, lwd = 4)
    rect(8,10,12,9, col = palette[shuff[3]], border = bordercolor, lwd = 4)
    rect(0,9,4,8, col = palette[shuff[4]], border = bordercolor, lwd = 4)
    rect(4,9,8,8, col = palette[shuff[5]], border = bordercolor, lwd = 4)
    rect(8,9,12,8, col = palette[shuff[6]], border = bordercolor, lwd = 4)

    return(title)
  }

  else if (number == 5) {
    names = c(palette[shuff[1]], palette[shuff[2]],palette[shuff[3]],palette[shuff[4]],palette[shuff[5]])
    title <- paste(names, collapse = ", ")

    x <- c(0,12)
    y <- c(8,10)
    plot(1, type="n", xlab="", ylab="", xlim=x, ylim=y,axes=FALSE, main=title, frame.plot=FALSE)
    rect(0,10,6,9, col = palette[shuff[1]], border = bordercolor, lwd = 4)
    rect(6,10,12,9, col = palette[shuff[2]], border = bordercolor, lwd = 4)
    rect(0,9,4,8, col = palette[shuff[3]], border = bordercolor, lwd = 4)
    rect(4,9,8,8, col = palette[shuff[4]], border = bordercolor, lwd = 4)
    rect(8,9,12,8, col = palette[shuff[5]], border = bordercolor, lwd = 4)

    return(title)
  }

  else if (number == 4) {
    names = c(palette[shuff[1]], palette[shuff[2]],palette[shuff[3]],palette[shuff[4]])
    title <- paste(names, collapse = ", ")

    x <- c(0,12)
    y <- c(8,10)
    plot(1, type="n", xlab="", ylab="", xlim=x, ylim=y,axes=FALSE, main=title,frame.plot=FALSE)
    rect(0,10,6,9, col = palette[shuff[1]], border = bordercolor, lwd = 4)
    rect(6,10,12,9, col = palette[shuff[2]], border = bordercolor, lwd = 4)
    rect(0,9,6,8, col = palette[shuff[3]], border = bordercolor, lwd = 4)
    rect(6,9,12,8, col = palette[shuff[4]], border = bordercolor, lwd = 4)

    return(title)
  }

  else if (number == 3) {
    names = c(palette[shuff[1]], palette[shuff[2]],palette[shuff[3]])
    title <- paste(names, collapse = ", ")
    x <- c(0,12)
    y <- c(9,10)
    plot(1, type="n", xlab="", ylab="", xlim=x, ylim=y,axes=FALSE, main = title, frame.plot=FALSE)
    rect(0,10,4,9, col = palette[shuff[1]], border = bordercolor, lwd = 4)
    rect(4,10,8,9, col = palette[shuff[2]], border = bordercolor, lwd = 4)
    rect(8,10,12,9, col = palette[shuff[3]], border = bordercolor, lwd = 4)

    return(title)
  }

  else if (number == 2) {
    names = c(palette[shuff[1]], palette[shuff[2]])
    title <- paste(names, collapse = ", ")
    x <- c(0,12)
    y <- c(9,10)
    plot(1, type="n", xlab="", ylab="", xlim=x, ylim=y,axes=FALSE,main=title, frame.plot=FALSE)
    rect(0,10,6,9, col = palette[shuff[1]], border = bordercolor, lwd = 4)
    rect(6,10,12,9, col = palette[shuff[2]], border = bordercolor, lwd = 4)

    return(title)

  }

  else {
    print("choose a number between 2 and 9")
  }

}

