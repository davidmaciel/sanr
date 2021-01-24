ver_encoding <- function(x){
  readr::guess_encoding(x)$encoding[1]
}

ler <- function(x){
  enc <- ver_encoding(x)
  readr::read_csv2(x, locale = readr::locale(encoding = enc))
}

pega_link <- function(url){
ses <- rvest::html_session(url)
rvest::html_nodes(ses, xpath = '//*[contains(concat( " ", @class, " " ), concat( " ", "nav-item", " " ))]//*[contains(concat( " ", @class, " " ), concat( " ", "active", " " ))]') %>%
  rvest::html_attr("href")
}

pega_dados <- function(url,link){
  ses <- rvest::html_session(url)
ses %>% rvest::jump_to(link) %>%
  rvest::html_node(xpath = '//*[contains(concat( " ", @class, " " ), concat( " ", "ellipsis", " " ))]//a') %>%
  rvest::html_attr("href") %>%
  ler()
}
