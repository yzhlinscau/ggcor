% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggcor.R
\name{ggcor}
\alias{ggcor}
\title{Create a correlation plot}
\usage{
ggcor(
  data,
  mapping = NULL,
  axis.x.position = "auto",
  axis.y.position = "auto",
  axis.label.drop = TRUE
)
}
\arguments{
\item{data}{cor_tbl object.}

\item{mapping}{NULL (default) or a list of aesthetic mappings to use for plot.}

\item{axis.x.position, axis.y.position}{the position of the axis. 'auto' (default)
is set according to the plot type, 'bottom' or 'top' for x axes, 'left' or 'right'
for y axes.}

\item{axis.label.drop}{logical value (default is TRUE). When type of plot is 'upper'
or 'lower' and 'show.diag' is FALSE, do you need to remove the blank coordinate
label.}
}
\value{
an object of class gg onto which layers, scales, etc. can be added.
}
\description{
This function is the equivalent of \code{\link[ggplot2]{ggplot}}
    in ggplot2. It takes care of setting up the position of axis and legend for
    the plot based on the plot type.
}
\examples{
df <- fortify_cor(mtcars)
ggcor(df)
df01 <- fortify_cor(mtcars, type = "lower", show.diag = FALSE)
ggcor(df01, axis.label.drop = TRUE)
}
\author{
Houyun Huang, Lei Zhou, Jian Chen, Taiyun Wei
}
