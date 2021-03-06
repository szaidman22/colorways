\name{colorbar}
\alias{colorbar}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function to display selected palette as a bar chart
}
\description{
Choose how many colors, which palette, whether you would like to shuffle the colors, and whether you would like the bar chart to be stacked. Shuffling colors will result in a random combination from within the selected palette. The function will return the color codes or names used in order.}
\usage{
colorbar(number = 3, palette = donut, shuffle = "no", stacked = "no")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{number}{
%%     ~~Describe \code{number} here~~
}
  \item{palette}{
%%     ~~Describe \code{palette} here~~
}
  \item{shuffle}{
%%     ~~Describe \code{shuffle} here~~
}
  \item{stacked}{
%%     ~~Describe \code{stacked} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (number = 3, palette = donut, shuffle = "no", stacked = "no")
{
    if (shuffle == "no") {
        c <- colordisplay(palette = palette)
    }
    else {
        c <- colordisplay(palette, shuffle = "yes")
    }
    if (stacked == "no") {
        x <- TRUE
    }
    else {
        x <- FALSE
    }
    if (number == 2) {
        names <- c[1:2]
        title <- paste(names, collapse = ", ")
        months <- c("have", "a", "nice", "day", "today")
        regions <- c("1", "2")
        Values <- matrix(c(8, 9, 3, 12, 8, 13, 8, 7, 4, 16),
            nrow = 2, ncol = 5, byrow = TRUE)
        barplot(Values, main = "2 Color Bar Chart", names.arg = months,
            col = c[1:2], beside = x, xlab = title)
        return(title)
    }
    else if (number == 3) {
        names <- c[1:3]
        title <- paste(names, collapse = ", ")
        months <- c("have", "a", "nice", "day", "today")
        regions <- c("1", "2", "3")
        Values <- matrix(c(8, 9, 3, 12, 8, 13, 8, 7, 4, 16, 5,
            9, 3, 7, 4), nrow = 3, ncol = 5, byrow = TRUE)
        barplot(Values, main = "3 Color Bar Chart", names.arg = months,
            col = c[1:3], beside = x, xlab = title)
        return(title)
    }
    else if (number == 4) {
        names <- c[1:4]
        title <- paste(names, collapse = ", ")
        months <- c("have", "a", "nice", "day", "today")
        regions <- c("1", "2", "3", "4")
        Values <- matrix(c(8, 9, 3, 12, 8, 13, 8, 7, 4, 16, 5,
            9, 3, 7, 12, 3, 5, 7, 13, 8), nrow = 4, ncol = 5,
            byrow = TRUE)
        barplot(Values, main = "4 Color Bar Chart", names.arg = months,
            col = c[1:4], beside = x, xlab = title)
        return(title)
    }
    else if (number == 5) {
        names <- c[1:5]
        title <- paste(names, collapse = ", ")
        months <- c("have", "a", "nice", "day", "today")
        regions <- c("1", "2", "3", "4", "5")
        Values <- matrix(c(8, 9, 3, 12, 8, 13, 8, 7, 4, 16, 5,
            9, 3, 7, 12, 3, 5, 7, 13, 8, 6, 12, 3, 7, 9), nrow = 5,
            ncol = 5, byrow = TRUE)
        barplot(Values, main = "5 Color Bar Chart", names.arg = months,
            col = c[1:5], beside = x, xlab = title)
        return(title)
    }
    else if (number == 6) {
        names <- c[1:6]
        title <- paste(names, collapse = ", ")
        months <- c("have", "a", "nice", "day", "today")
        regions <- c("1", "2", "3", "4", "5", "6")
        Values <- matrix(c(8, 9, 3, 12, 8, 13, 8, 7, 4, 16, 5,
            9, 3, 7, 12, 3, 5, 7, 13, 8, 6, 12, 3, 7, 9, 5, 4,
            10, 4, 3), nrow = 6, ncol = 5, byrow = TRUE)
        barplot(Values, main = "6 Color Bar Chart", names.arg = months,
            col = c[1:6], beside = x, xlab = title)
        return(title)
    }
    else if (number == 7) {
        names <- c[1:7]
        title <- paste(names, collapse = ", ")
        months <- c("have", "a", "nice", "day", "today")
        regions <- c("1", "2", "3", "4", "5", "6", "7")
        Values <- matrix(c(8, 9, 3, 12, 8, 13, 8, 7, 4, 16, 5,
            9, 3, 7, 12, 3, 5, 7, 13, 8, 6, 12, 3, 7, 9, 5, 4,
            10, 4, 3, 5, 8, 6, 4, 5), nrow = 7, ncol = 5, byrow = TRUE)
        barplot(Values, main = "7 Color Bar Chart", names.arg = months,
            col = c[1:7], beside = x, xlab = title)
        return(title)
    }
    else {
        print("please choose a number between 2 and 7")
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
