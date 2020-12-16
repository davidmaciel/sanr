## code to prepare `DATASET` dataset goes here


# dap central -------------------------------------------------------------


p2017 <- paste0("http://dados.mda.gov.br/dataset/9a1cd20b-ed8f-4604-a644-e821c2216029/resource/2a5e1530-4d8a-44b1-868a-d22b7527c3f3/download/2017_",
c("07","08","09","10","11","12"),"_", c("01","02",rep("01",4)),"-dap-pj-3.3.csv")
p2018 <-
  paste0(
    "http://dados.mda.gov.br/dataset/9a1cd20b-ed8f-4604-a644-e821c2216029/resource/2a5e1530-4d8a-44b1-868a-d22b7527c3f3/download/2018_",
    c("01","02","03","04","05","06", "07", "08", "09", "10", "11", "12"),
    "_",
    rep("01",12),
    "-dap-pj-3.3.csv"
  )
p2019 <- paste0(
  "http://dados.mda.gov.br/dataset/9a1cd20b-ed8f-4604-a644-e821c2216029/resource/2a5e1530-4d8a-44b1-868a-d22b7527c3f3/download/2019_",
  c("01","02","03","04","05","06", "07", "08", "09", "10", "11", "12"),
  "_",
  rep("01",12),
  "-dap-pj-3.3.csv"
)
