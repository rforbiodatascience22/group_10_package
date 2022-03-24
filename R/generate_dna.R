#' Generate a random DNA sequence
#'
#' @param length An integer specifying the length of the DNA sequence to
#' generate.
#'
#' @return A character object with the generated DNA sequence.
#' @export
#'
#' @examples
#' generate_dna(length = 10)
#' # "CAGGCGCGTT"
generate_dna <- function(length){
  dna_vector <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  dna_string <- paste0(dna_vector, collapse = "")
  return(dna_string)
}
