# Makes bar chart to view colors for chosen palette

colorbar <- function(number = 3, palette = donut, shuffle = "no", stacked = "no"){
  if (shuffle == "no") {
    c <- colordisplay(palette = palette)
  }

  else {
    c <- colordisplay(palette, shuffle = "yes")
  }

  if  (stacked == "no") {
    x <- TRUE
  }

  else {

    x <- FALSE
  }

  if (number ==2) {

    names <- c[1:2]
    title <- paste(names, collapse = ", ")

    months <- c("have","a","nice","day","today")
    regions <- c("1","2")
    Values <- matrix(c(8,9,3,12,8,13,8,7,4,16), nrow = 2, ncol = 5, byrow = TRUE)
    barplot(Values, main = "2 Color Bar Chart", names.arg = months, col = c[1:2], beside = x, xlab = title)

    attr(title, "class") <- "colors"

    return(title)
  }

  else if (number ==3) {
    names <- c[1:3]
    title <- paste(names, collapse = ", ")


    months <- c("have","a","nice","day","today")
    regions <- c("1","2","3")
    Values <- matrix(c(8,9,3,12,8,13,8,7,4,16,5,9,3,7,4), nrow = 3, ncol = 5, byrow = TRUE)
    barplot(Values, main = "3 Color Bar Chart", names.arg = months, col = c[1:3], beside = x, xlab = title)

    title <- attr(title, "class") <- "colors"

    return(title)

  }

  else if (number ==4) {

    names <- c[1:4]
    title <- paste(names, collapse = ", ")

    months <- c("have","a","nice","day","today")
    regions <- c("1","2","3","4")
    Values <- matrix(c(8,9,3,12,8,13,8,7,4,16,5,9,3,7,12,3,5,7,13,8), nrow = 4, ncol = 5, byrow = TRUE)
    barplot(Values, main = "4 Color Bar Chart", names.arg = months, col = c[1:4], beside = x, xlab = title)

    attr(title, "class") <- "colors"

    return(title)
  }

  else if (number ==5) {

    names <- c[1:5]
    title <- paste(names, collapse = ", ")

    months <- c("have","a","nice","day","today")
    regions <- c("1","2","3","4","5")
    Values <- matrix(c(8,9,3,12,8,13,8,7,4,16,5,9,3,7,12,3,5,7,13,8,6,12,3,7,9), nrow = 5, ncol = 5, byrow = TRUE)
    barplot(Values, main = "5 Color Bar Chart", names.arg = months, col = c[1:5], beside = x, xlab= title)

    attr(title, "class") <- "colors"

    return(title)
  }

  else if (number ==6) {
    names <- c[1:6]
    title <- paste(names, collapse = ", ")

    months <- c("have","a","nice","day","today")
    regions <- c("1","2","3","4","5","6")
    Values <- matrix(c(8,9,3,12,8,13,8,7,4,16,5,9,3,7,12,3,5,7,13,8,6,12,3,7,9,5,4,10,4,3), nrow = 6, ncol = 5, byrow = TRUE)
    barplot(Values, main = "6 Color Bar Chart", names.arg = months, col = c[1:6], beside = x, xlab= title)

    attr(title, "class") <- "colors"

    return(title)
  }

  else if (number ==7) {
    names <- c[1:7]
    title <- paste(names, collapse = ", ")

    months <- c("have","a","nice","day","today")
    regions <- c("1","2","3","4","5","6","7")
    Values <- matrix(c(8,9,3,12,8,13,8,7,4,16,5,9,3,7,12,3,5,7,13,8,6,12,3,7,9,5,4,10,4,3,5,8,6,4,5), nrow = 7, ncol = 5, byrow = TRUE)
    barplot(Values, main = "7 Color Bar Chart", names.arg = months, col = c[1:7], beside = x, xlab=title)

    attr(title, "class") <- "colors"

    return(title)
  }

  else {
    print("please choose a number between 2 and 7")
  }
}

colorbar(palette = january, number = 3)


