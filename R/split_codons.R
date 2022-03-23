#' Split RNA sequence into codons
#'
#' @param rna_string RNA sequence string
#' @param start position in RNA sequence where open reading frame starts
#'
#' @return Vector of codons in open reading frame
#' @export
#'
#' @examples
#' string <- "ATCGTACGATATGATACAGAGATAGACATATTTAACGG"
#' split_codons(string)
#' # "ATC" "GTA" "CGA" "TAT" "GAT" "ACA" "GAG" "ATA" "GAC" "ATA" "TTT" "AAC"

split_codons <- function(rna_string, start = 1){
  rna_lenght <- nchar(rna_string)
  codons <- substring(rna_string,
                      first = seq(from = start, to = rna_lenght-3+1, by = 3),
                      last = seq(from = 3+start-1, to = rna_lenght, by = 3))
  return(codons)
}
