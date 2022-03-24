#' Transcribe DNA to RNA, substitute T with U
#'
#' @param dna_string A character object with a DNA sequence.
#'
#' @return A character object with a RNA sequence that was transcribed from the
#' DNA sequence.
#' @export
#'
#' @examples
#' dna_string <- "ATTA"
#'
#' transcribe(dna_string)
#' # "AUUA"
transcribe <- function(dna_string){
  rna_string <- gsub("T", "U", dna_string)
  return(rna_string)
}
