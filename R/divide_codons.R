#' Divide into codons
#'
#' @param RNA_string Rna string
#' @param start start of ORF
#'
#' @return Vector of all the codons included in the string
#' @export
#'
#' @examples
#'
#'string <- "ATCGTACGATATGATACAGAGATAGACATATTTAACGG"
#'divide_codons(string)
#'#"ATC" "GTA" "CGA" "TAT" "GAT" "ACA" "GAG" "ATA" "GAC" "ATA" "TTT" "AAC"

divide_codons <- function(RNA_string, start = 1){
  RNA_len <- nchar(RNA_string)
  codons <- substring(RNA_string,
                      first = seq(from = start, to = RNA_len-3+1, by = 3),
                      last = seq(from = 3+start-1, to = RNA_len, by = 3))
  return(codons)
}
