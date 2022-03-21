#' Generate a random DNA sequence
#'
#' @param length length of DNA sequence to generate
#'
#' @return Random DNA sequence string
#' @export
#'
#' @examples
#' generate_dna(length = 10)
generate_dna <- function(length){
  dna_vector <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  dna_string <- paste0(dna_vector, collapse = "")
  return(dna_string)
}
