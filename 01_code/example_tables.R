### -----------------------------------------------------------------
### Biblioteki
library(dplyr)
library(stargazer)

### -----------------------------------------------------------------
### Wczytanie danych z zewnętrznego katalogu
pathData <- "../data/entsoe_country_dict.csv"
dataOrig <- tibble(read.csv(file = pathData))

### -----------------------------------------------------------------
### Tworzenie i zapisywanie tabeli do katalogu z pracą
tab <- stargazer(dataOrig,
  title = "To jest tytuł tabeli",
  summary = FALSE,
  label = "tab:przykladowa-tabela",
  font.size = "footnotesize",
  rownames = FALSE,
  header = FALSE
)
tab <- append(tab, "  \\captionsetup{margin=10pt,font=small,labelfont=bf,width=.8\\textwidth}", after = 2)
writeLines(text = tab, con = "./02_paper/out_tables/tab1.tex")
