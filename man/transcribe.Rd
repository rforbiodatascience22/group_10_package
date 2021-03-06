% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transcribe.R
\name{transcribe}
\alias{transcribe}
\title{Transcribe DNA to RNA, substitute T with U}
\usage{
transcribe(dna_string)
}
\arguments{
\item{dna_string}{A character object with a DNA sequence.}
}
\value{
A character object with a RNA sequence that was transcribed from the
DNA sequence.
}
\description{
Transcribe DNA to RNA, substitute T with U
}
\examples{
dna_string <- "ATTA"

transcribe(dna_string)
# "AUUA"
}
