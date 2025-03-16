# Projekt

## Autorzy
Mateusz Chorab, Mikołaj Abram  

## Data
`r Sys.Date()`

## Opis bazy danych
Baza danych zawiera dane demograficzne i społeczne Polski w latach 2014-2023. Obejmuje kluczowe wskaźniki dotyczące **populacji**, **przyrostu naturalnego**, **bezrobocia**, **średniej długości trwania życia**.  
Źródła: [GUS](https://stat.gov.pl/)

## Zawarte wskaźniki
- **Liczba ludności (w mln)** - populacja Polski w danym roku.
- **Przyrost naturalny** - różnica między liczbą urodzeń a liczbą zgonów (wartość ujemna oznacza spadek populacji).
- **Stopa bezrobocia rejestrowanego** - procentowy udział osób bezrobotnych wśród aktywnych zawodowo.
- **Przeciętne dalsze trwanie życia** - średnia liczba lat, jaką może przeżyć osoba w danym roku, podzielona na kobiety i mężczyzn.

## Wczytanie zbioru
```r
# Załadowanie wymaganej biblioteki
library(readxl)

# Wczytanie danych
data <- read_excel("Data/baza.xlsx")

# Wyświetlenie danych
print(data)
