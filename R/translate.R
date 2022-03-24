#' Translate RNA codons into amino acids
#' @param codons An atomic character vector with a sequence of codons
#'
#' @return A character object with an amino acid sequence that was translated
#' from the sequence of RNA codons.
#' @export
#'
#' @examples
#' codons <- c("GGG", "GGC", "GCG", "UCC", "GUC")
#'
#' translate(codons)
#' # "GGASV"


translate <- function(codons){
  protein_string <- paste0(codon_table[codons], collapse = "")
  return(protein_string)
}
