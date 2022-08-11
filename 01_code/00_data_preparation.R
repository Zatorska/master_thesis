### -----------------------------------------------------------------
### Biblioteki
library(dplyr)

### -----------------------------------------------------------------
### Tworzenie zewnętrznego katalogu (Github nie dopuszcza plików
### powyżej 100 MB)
pathData <- "../data/"
if(!dir.exists(paths = pathData)) {
  dir.create(path = pathData)
}

### -----------------------------------------------------------------
### Kopiowanie danych do zewnętrznego katalogu
unzip(
  zipfile = "./00_data/data.zip",
  overwrite = TRUE,
  exdir = pathData)

