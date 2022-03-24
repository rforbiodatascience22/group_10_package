#' Split RNA sequence into codons
#'
#' @param rna_string A character object with a RNA sequence.
#' @param start An integer specifying the position in the RNA sequence where the
#' reading frame starts.
#'
#' @return An atomic character vector with a sequence of codons corresponding to
#' the specified reading frame of the RNA sequence.
#' @export
#'
#' @examples
#' rna_string <- "ATCGTACGATATGATACAGAGATAGACATATTTAACGG"
#'
#' split_codons(rna_string)
#' # "ATC" "GTA" "CGA" "TAT" "GAT" "ACA" "GAG" "ATA" "GAC" "ATA" "TTT" "AAC"
#'
#' split_codons(rna_string, start = 5)
#' # "TAC" "GAT" "ATG" "ATA" "CAG" "AGA" "TAG" "ACA" "TAT" "TTA" "ACG"

split_codons <- function(rna_string, start = 1){
  rna_length <- nchar(rna_string)
  codons <- substring(rna_string,
                      first = seq(from = start, to = rna_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = rna_length, by = 3))
  return(codons)
}
