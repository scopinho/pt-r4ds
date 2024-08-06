# Gerando dados usados no arquivo spreadsheets
ilhas <- dados::pinguins |>
  dplyr::group_split(ilha)


ilhas[[1]] |>
  xlsx::write.xlsx(file = "data/pinguins.xlsx",
                   sheetName = "Ilha Biscoe")

ilhas[[2]] |>
  xlsx::write.xlsx(file = "data/pinguins.xlsx",
                   sheetName = "Ilha Dream", append = TRUE)

ilhas[[3]] |>
  xlsx::write.xlsx(file = "data/pinguins.xlsx",
                   sheetName = "Ilha Torgersen", append = TRUE)
