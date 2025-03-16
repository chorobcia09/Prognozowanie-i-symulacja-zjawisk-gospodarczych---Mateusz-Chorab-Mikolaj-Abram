---
title: "Projekt"
author: "Mateusz Chorab, Mikołaj Abram"
date: "`r Sys.Date()`"
output:
  html_document:
    toc: true
    toc_float: true
    theme: lumen
    df_print: paged
    keep_md: true
    self_contained: true
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE) # ustawienie, że kod R jest zawsze pokazywany
```


# Opis bazy danych
Baza danych zawiera dane demograficzne i społeczne Polski w latach 2014-2023. Objemuje kluczowe wskaźniki dotyczące **populacji**, **przyrostu naturalnego**, **bezrobocia**, **średniej długości trawania życia**.
Źródła: https://stat.gov.pl/ 

## Zawarte wskaźniki 
- Liczba ludności (w mln) - populacja Polski w danym roku.
- Przyrost naturalny - różnica między liczbą urodzeń a liczbą zgonów (wartość ujemna oznacza spadek populacji).
- Stopa bezrobocia rejestrowanego - procentowy udział osób bezrobotnych wśród aktywnych zawodowo.
- Przeciętne dalsze trwanie życie - średnia liczba lat, jaką może przeżyć osoba w danym roku, podzielona na kobiety i mężczyzny.

### Wczytanie zbioru
```{r warning=FALSE}
library(readxl)
data <- read_excel("Data/baza.xlsx")
data
```
