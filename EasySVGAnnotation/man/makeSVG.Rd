\name{makeSVG}
\alias{makeSVG}
\title{Make an SVG with Tool-Tip Annotations}
\usage{
  makeSVG(plot, dat, outFile = NULL, cols = NULL,
    width = 4, height = 4)
}
\arguments{
  \item{plot}{the \code{lattice} plot object.}

  \item{dat}{the \code{data.frame} used in generating the
  lattice plot.}

  \item{outFile}{location to output the generated SVG
  file.}

  \item{cols}{the columns to use when generating the
  annotated SVG.}

  \item{width}{width, in inches, of the generated SVG
  plot.}

  \item{height,}{in inches, of the generated SVG plot.}
}
\description{
  This function takes a lattice plot, plus the data frame
  it was generated from, and generates a tool-tip annotated
  lattice plot.
}

