\name{kGetPlotPoints}
\alias{kGetPlotPoints}
\title{Get Plot Points}
\usage{
  kGetPlotPoints(doc, plot, allPoints)
}
\arguments{
  \item{doc}{generated XML doc from \code{svgPlot}.}

  \item{plot}{the \code{lattice} plot object.}

  \item{allPoints}{output returned from a
  \code{getPlotPoints} call.}
}
\description{
  This function returns the 'true' plot points in an
  SVGAnnotation-generated \code{doc}; ie, it discards any
  points that are eg. lines, smooths, and so forth.
}

