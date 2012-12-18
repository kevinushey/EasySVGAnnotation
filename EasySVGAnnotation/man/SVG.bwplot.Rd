\name{SVG.bwplot}
\alias{SVG.bwplot}
\title{EasySVGAnnotation-ready Lattice Boxplot}
\usage{
  SVG.bwplot(...)
}
\arguments{
  \item{...}{the call normally supplied to \code{bwplot}}
}
\description{
  This function generates a lattice boxplot with suitable
  defaults for the SVG annotation package to parse symbols
  plotted correctly.
}
\details{
  The key is ensuring the color for \code{plot.symbol} is
  different from \code{box.rectangle}, \code{box.umbrella},
  and \code{box.dot}.
}
\seealso{
  \code{\link{bwplot}}
}

