#' Split RNA sequence into codons
#'
#' @param rna_string RNA sequence string
#' @param start position in RNA sequence where reading frame starts
#'
#' @return Vector of codons in reading frame
#' @export
#'
#' @examples
#' rna_string <- "ATCGTACGATATGATACAGAGATAGACATATTTAACGG"
#' split_codons(rna_string)
#' # "ATC" "GTA" "CGA" "TAT" "GAT" "ACA" "GAG" "ATA" "GAC" "ATA" "TTT" "AAC"
#' split_codons(rna_string, start = 5)
#' # "TAC" "GAT" "ATG" "ATA" "CAG" "AGA" "TAG" "ACA" "TAT" "TTA" "ACG"

split_codons <- function(rna_string, start = 1){
  rna_length <- nchar(rna_string)
  codons <- substring(rna_string,
                      first = seq(from = start, to = rna_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = rna_length, by = 3))
  return(codons)
}
