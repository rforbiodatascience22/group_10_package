generate_dna <- function(length){
  dna_vector <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  dna_string <- paste0(dna_vector, collapse = "")
  return(dna_string)
}
