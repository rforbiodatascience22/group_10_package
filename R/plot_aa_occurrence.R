#' Plot occurrences of amino acids in peptides
#'
#' @param protein_string A character object with an amino acid sequence.
#'
#' @return A plot of occurrences of each amino acid in a peptide.
#' @export
#'
#' @examples
#' protein_string <- "GGASVTVSRFW_PSQSKQRHRVEPVS_IQSYLP"
#'
#' plot_aa_occurrence(protein_string)
#' @importFrom magrittr %>%
#' @importFrom rlang .data
plot_aa_occurrence <- function(protein_string){
# Determine unique amino acids in protein sequence
  unique_amino_acids <- protein_string %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

# Count the occurrence of each amino acid in the protein sequence
  counts <- sapply(unique_amino_acids, function(amino_acid) stringr::str_count(string = protein_string, pattern = stringr::fixed(amino_acid))) %>%
    as.data.frame()

# Tidy counts table
  colnames(counts) <- c("Counts")
  counts[["Amino_Acid"]] <- rownames(counts)

# Plot the occurrences
  occurrence_plot <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = .data$Amino_Acid, y = .data$Counts, fill = .data$Amino_Acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(occurrence_plot)
}
