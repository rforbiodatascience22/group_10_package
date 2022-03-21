divide_codons <- function(RNA_string, start = 1){
  RNA_len <- nchar(RNA_string)
  codons <- substring(RNA_len,
                      first = seq(from = start, to = RNA_len-3+1, by = 3),
                      last = seq(from = 3+start-1, to = RNA_len, by = 3))
  return(codons)
}
