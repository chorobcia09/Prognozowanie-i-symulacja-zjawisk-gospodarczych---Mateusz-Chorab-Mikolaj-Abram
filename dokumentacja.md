---
title: "Projekt"
author: "Mateusz Chorab, Mikołaj Abram"
date: "2025-03-16"
output:
  html_document:
    toc: true
    toc_float: true
    theme: lumen
    df_print: paged
    keep_md: true
    self_contained: true
---




# Opis bazy danych
Baza danych zawiera dane demograficzne i społeczne Polski w latach 2014-2023. Objemuje kluczowe wskaźniki dotyczące **populacji**, **przyrostu naturalnego**, **bezrobocia**, **średniej długości trawania życia**.
Źródła: https://stat.gov.pl/ 

## Zawarte wskaźniki 
- Liczba ludności (w mln) - populacja Polski w danym roku.
- Przyrost naturalny - różnica między liczbą urodzeń a liczbą zgonów (wartość ujemna oznacza spadek populacji).
- Stopa bezrobocia rejestrowanego - procentowy udział osób bezrobotnych wśród aktywnych zawodowo.
- Przeciętne dalsze trwanie życie - średnia liczba lat, jaką może przeżyć osoba w danym roku, podzielona na kobiety i mężczyzny.

### Wczytanie zbioru

``` r
library(readxl)
data <- read_excel("Data/baza.xlsx")
data
```

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["ROK"],"name":[1],"type":["dbl"],"align":["right"]},{"label":["LUDNOŚĆ (W MLN)"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["PRZYROST NATURALNY"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["STOPA BEZROBOCIA REJESTROWANEGO"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["PRZECIĘTNE DALSZE TRWANIE ŻYCIE (W LATACH) DLA MĘŻCZYZN"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["PRZECIĘTNE DALSZE TRWANIE ŻYCIE (W LATACH) DLA KOBIET"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"2014","2":"38478602","3":"-1307","4":"11.4","5":"73.75","6":"81.61"},{"1":"2015","2":"38437239","3":"-25613","4":"9.7","5":"73.60","6":"81.60"},{"1":"2016","2":"38432992","3":"-5752","4":"8.2","5":"73.94","6":"81.94"},{"1":"2017","2":"38433558","3":"-870","4":"6.6","5":"74.00","6":"81.80"},{"1":"2018","2":"38411148","3":"-26022","4":"5.8","5":"73.80","6":"81.70"},{"1":"2019","2":"38382576","3":"-34755","4":"5.2","5":"74.10","6":"81.80"},{"1":"2020","2":"38088564","3":"-122046","4":"6.3","5":"72.60","6":"80.70"},{"1":"2021","2":"37907704","3":"-188006","4":"5.8","5":"71.80","6":"79.70"},{"1":"2022","2":"37766327","3":"-143316","4":"5.2","5":"73.40","6":"81.10"},{"1":"2023","2":"37636508","3":"-136585","4":"5.1","5":"74.70","6":"82.00"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>



