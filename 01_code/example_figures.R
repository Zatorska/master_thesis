### -----------------------------------------------------------------
### Biblioteki
library(lubridate)
library(xts)
library(ggplot2)

### -----------------------------------------------------------------
### Wczytanie przykładowych danych
pathData <- "../data/entsoe_country.csv"
dataOrig <- read.csv(file = pathData, sep = ";")

### -----------------------------------------------------------------
### Tworzenie przykładowego wykresu
ind <- dataOrig$Variable == "BZN_PL"
dataTS <- xts(
  x = dataOrig$TotalLoad_Actual_MW[ind],
  order.by = ymd_hms(dataOrig$Timestamp[ind]))

png(filename = "./02_paper/out_figures/fig1.png")
plot(dataTS)
dev.off()

