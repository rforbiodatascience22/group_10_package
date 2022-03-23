#' Plot occurrences of amino acids in peptides
#'
#' @param protein_string an amino acid sequence
#'
#' @return Plot of occurrences of each amino acid in a peptide
#' @export
#'
#' @examples
#' plot_aa_occurrence(protein_string = "RQNANANAEPNANANANARNARNAANNNANANAPNAGNANA")
#' @importFrom magrittr %>%
#' @importFrom rlang .data
plot_aa_occurrence <- function(protein_string){
  protein_vector <- protein_string %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  counts <- sapply(protein_vector, function(amino_acid) stringr::str_count(string = protein_string, pattern =  amino_acid)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Amino_Acid"]] <- rownames(counts)

  occurrence_plot <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = .data$Amino_Acid, y = .data$Counts, fill = .data$Amino_Acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(occurrence_plot)
}
