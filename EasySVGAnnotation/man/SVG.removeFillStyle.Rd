\name{SVG.removeFillStyle}
\alias{SVG.removeFillStyle}
\title{Remove Fill Style}
\usage{
  SVG.removeFillStyle(plot, allPoints)
}
\arguments{
  \item{plot}{the lattice plot object.}

  \item{allPoints}{the R object produced from an
  \code{addPlotPoints} call.}
}
\description{
  For some reason, after using the \code{addPlotPoints}
  function, SVG adds in an unwanted fill style. We remove
  it and reset the original fill style.
}

