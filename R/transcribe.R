#' Transcribe DNA to RNA, substitute T with U
#'
#' @param DNA DNA sequence
#'
#' @return RNA sequence
#' @export
#'
#' @examples
#' transcribe(DNA = "ATTA")
#' #[1] "AUUA"
transcribe <- function(DNA){
  RNA <- gsub("T", "U", DNA)
  return(RNA)
}
