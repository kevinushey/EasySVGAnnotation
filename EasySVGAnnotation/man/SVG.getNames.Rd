\name{SVG.getNames}
\alias{SVG.getNames}
\title{Get Names from Data Frame for SVG Annotation}
\usage{
  SVG.getNames(dat, x = NULL, y = NULL, cols = NULL,
    round = 3)
}
\arguments{
  \item{dat}{the data frame used in generating the lattice
  plot.}

  \item{x}{the x variable}

  \item{y}{the y variable}

  \item{cols}{the columns to keep}

  \item{round}{number of decimal points to keep on x and y}
}
\description{
  This function parses a data frame into a format suitable
  for annotation of the generated SVG plot.
}

