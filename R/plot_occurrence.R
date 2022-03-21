#' Plot occurences of amino acids in peptides
#'
#' @param count_occ
#'
#' @return plot_of_occ
#' @export
#'
#' @examples
#' @importFrom magrittr %>%
plot_occurrence <- function(count_occ){
  aminoacid <- count_occ %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  counts <- sapply(aminoacid, function(plot_of_occ) stringr::str_count(string = count_occ, pattern =  plot_of_occ)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Name_me2"]] <- rownames(counts)

  plot_of_occ <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = count_occ, y = Counts, fill = count_occ)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(plot_of_occ)
}
