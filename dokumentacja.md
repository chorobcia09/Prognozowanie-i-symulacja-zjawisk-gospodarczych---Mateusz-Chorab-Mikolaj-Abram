---
title: "Projekt"
author: "Mateusz Chorab, Mikołaj Abram"
date: "2025-03-17"
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
Baza danych zawiera dane demograficzne i społeczne Polski w latach 2014-2023. Objemuje kluczowe wskaźniki dotyczące **populacji**, **przyrostu naturalnego**, **bezrobocia**, **średniej długości trawania życia**. </br >
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
{"columns":[{"label":["ROK"],"name":[1],"type":["dbl"],"align":["right"]},{"label":["LUDNOŚĆ (W MLN)"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["PRZYROST NATURALNY"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["STOPA BEZROBOCIA REJESTROWANEGO (W %)"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["PRZECIĘTNE DALSZE TRWANIE ŻYCIE (W LATACH) DLA MĘŻCZYZN"],"name":[5],"type":["dbl"],"align":["right"]},{"label":["PRZECIĘTNE DALSZE TRWANIE ŻYCIE (W LATACH) DLA KOBIET"],"name":[6],"type":["dbl"],"align":["right"]}],"data":[{"1":"2004","2":"38173835","3":"-7391","4":"19.0","5":"70.70","6":"79.20"},{"1":"2005","2":"38157055","3":"-3902","4":"17.6","5":"70.80","6":"79.40"},{"1":"2006","2":"38125479","3":"4558","4":"14.8","5":"70.90","6":"79.60"},{"1":"2007","2":"38115641","3":"10647","4":"11.2","5":"71.00","6":"79.70"},{"1":"2008","2":"38135876","3":"35100","4":"9.5","5":"71.30","6":"80.00"},{"1":"2009","2":"38167329","3":"32649","4":"12.1","5":"71.50","6":"80.10"},{"1":"2010","2":"38529866","3":"34822","4":"12.4","5":"72.10","6":"80.60"},{"1":"2011","2":"38538447","3":"12915","4":"12.5","5":"72.40","6":"80.90"},{"1":"2012","2":"38533299","3":"1469","4":"13.4","5":"72.70","6":"81.00"},{"1":"2013","2":"38495659","3":"-17736","4":"13.4","5":"73.10","6":"81.10"},{"1":"2014","2":"38478602","3":"-1307","4":"11.4","5":"73.75","6":"81.61"},{"1":"2015","2":"38437239","3":"-25613","4":"9.7","5":"73.60","6":"81.60"},{"1":"2016","2":"38432992","3":"-5752","4":"8.2","5":"73.94","6":"81.94"},{"1":"2017","2":"38433558","3":"-870","4":"6.6","5":"74.00","6":"81.80"},{"1":"2018","2":"38411148","3":"-26022","4":"5.8","5":"73.80","6":"81.70"},{"1":"2019","2":"38382576","3":"-34755","4":"5.2","5":"74.10","6":"81.80"},{"1":"2020","2":"38088564","3":"-122046","4":"6.3","5":"72.60","6":"80.70"},{"1":"2021","2":"37907704","3":"-188006","4":"5.8","5":"71.80","6":"79.70"},{"1":"2022","2":"37766327","3":"-143316","4":"5.2","5":"73.40","6":"81.10"},{"1":"2023","2":"37636508","3":"-136585","4":"5.1","5":"74.70","6":"82.00"}],"options":{"columns":{"min":{},"max":[10]},"rows":{"min":[10],"max":[10]},"pages":{}}}
  </script>
</div>



