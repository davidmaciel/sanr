ver_encoding <- function(x){
  readr::guess_encoding(x)$encoding[1]
}
