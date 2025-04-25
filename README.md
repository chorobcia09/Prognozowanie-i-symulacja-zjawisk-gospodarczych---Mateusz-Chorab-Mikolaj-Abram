# Projekt

## Autorzy
Mateusz Chorab, Mikołaj Abram  

## Data
16.03.2025

## Opis bazy danych
Godzinowy ruch drogowy na autostradzie międzystanowej I-94 w kierunku zachodnim dla stacji ATR 301 Departamentu Transportu Minnesoty (MN DoT), znajdującej się mniej więcej w połowie drogi między Minneapolis a St. Paulem w stanie Minnesota. Uwzględniono godzinowe dane pogodowe oraz święta, aby ocenić ich wpływ na natężenie ruchu. </br >
Źródła: https://archive.ics.uci.edu/

## Zawarte wskaźniki
- holiday: Kategoria – Święta narodowe USA oraz święta regionalne, w tym Minnesota State Fair
- temp: Liczbowy – Średnia temperatura w kelwinach
- rain_1h: Liczbowy – Ilość deszczu w mm, który spadł w ciągu godziny
- snow_1h: Liczbowy – Ilość śniegu w mm, który spadł w ciągu godziny
- clouds_all: Liczbowy – Procentowe zachmurzenie
- weather_main: Kategoria – Krótki opis aktualnej pogody
- weather_description: Kategoria – Dłuższy opis aktualnej pogody
- date_time: Data i czas – Godzina zbierania danych w lokalnym czasie CST
- traffic_volume: Liczbowy – Liczba pojazdów przejeżdżających na zachód przez punkt ATR 301 na autostradzie I-94 w ciągu godziny

## Wczytanie zbioru
```r
library(readxl)
data <- read_excel("baza.xlsx")
print(data)
