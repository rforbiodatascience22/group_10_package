% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/translate.R
\name{translate}
\alias{translate}
\title{Translate RNA codons into amino acids}
\usage{
translate(codons)
}
\arguments{
\item{codons}{An atomic character vector with a sequence of codons}
}
\value{
A character object with an amino acid sequence that was translated
from the sequence of RNA codons.
}
\description{
Translate RNA codons into amino acids
}
\examples{
codons <- c("GGG", "GGC", "GCG", "UCC", "GUC")

translate(codons)
# "GGASV"
}
