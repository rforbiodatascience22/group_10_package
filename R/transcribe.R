#' Transcribe DNA to RNA, substitute T with U
#'
#' @param DNA
#'
#' @return
#' @export
#'
#' @examples
transcribe <- function(DNA){
  RNA <- gsub("T", "U", DNA)
  return(RNA)
}
