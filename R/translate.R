#' Translates codons into amino acids
#' @param codons fdb
#' @export


translate <- function(codons){
  amino_acids <- paste0(codon_table[codons], collapse = "")
  return(amino_acids)
}
