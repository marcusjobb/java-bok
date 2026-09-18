---
title: Arbetad tid
layout: default
author: Campus Mölndal
author_github: CampusMolndalEducation
author_url: "https://github.com/CampusMolndalEducation"
school: Campus Mölndal
date: "2025-08-18 15:43:11"
updated: "2025-09-06 23:35:22"
parent: Examples
nav_order: 10
---
# Arbetad tid

Vi ska göra en beräkning av arbetad tid på en månad, vi gör detta genom att
skapa variabler för varje dag och varje vecka, sedan skapar vi en variabel för
hela månaden.

## Kod

Då det är fyra veckor kommer vi att markera varje dag med siffra för vilken
vecka den tillhör. Vi ska också skapa en variabel för varje dag och vecka.
Vi kommer att använda oss av `float` för att kunna använda decimaler, för att float är i jämförelse mot `double` mindre minneskrävande och vi behöver inte så många decimaler.

```java
class Main {
  public static void main(String[] args) {

    // Vecka 1
    float måndag1 = 7.5; // 7 timmar och 30 minuter
    float tisdag1 = 8;
    float onsdag1 = 8;
    float torsdag1 = 9; // Personal möte
    float fredag1 = 6;
    float vecka1 = måndag1 + tisdag1 + onsdag1 + torsdag1 + fredag1;
    float genomSnittVecka1 = vecka1 / 5;

    // Vecka 2
    float måndag2 = 8;
    float tisdag2 = 8.5;
    float onsdag2 = 8.5;
    float torsdag2 = 9; // Personal möte
    float fredag2 = 5.5;
    float vecka2 = måndag2 + tisdag2 + onsdag2 + torsdag2 + fredag2;
    float genomSnittVecka2 = vecka2 / 5;

    // Vecka 3
    float måndag3 = 8.5;
    float tisdag3 = 8.5;
    float onsdag3 = 8.5;
    float torsdag3 = 9; // Personal möte
    float fredag3 = 6;
    float vecka3 = måndag3 + tisdag3 + onsdag3 + torsdag3 + fredag3;
    float genomsnittVecka3 = vecka3 / 5;

    // Vecka 4
    float måndag4 = 8;
    float tisdag4 = 8.5;
    float onsdag4 = 8.5;
    float torsdag4 = 9; // Personal möte
    float fredag4 = 6;
    float vecka4 = måndag4 + tisdag4 + onsdag4 + torsdag4 + fredag4;
    float genomsnittVecka4 = vecka4 / 5;

    // Månad
    float månad = vecka1 + vecka2 + vecka3 + vecka4;
    float genomsnittMåmnad = genomSnittVecka1 + genomSnittVecka2 + genomsnittVecka3 + genomsnittVecka4;

    // Rapport
    System.out.println("Arbetad tid denna månad: " + månad + " timmar");
    System.out.println("Genomsnittlig arbetad tid per vecka: " + genomsnittMåmnad + " timmar");
    System.out.println("Genomsnittlig arbetad tid per dag: " + genomsnittMåmnad / 5 + " timmar");

  }
}
```

Detta ger oss resultatet

```text
Arbetad tid denna månad: 160.0 timmar
Genomsnittlig arbetad tid per vecka: 40.0 timmar
Genomsnittlig arbetad tid per dag: 8.0 timmar
```

## Andra tillvägagångssätt

Vårt projekt, även med sin enkla form har en helt klart tydlig kod som är lätt att förstå och lätt att läsa, och som du faktiskt kan använda. Enda nackdelen är kanske att du får skriva minuter i decimalform, det går att lösa.

```java
    float onsddag4 = 8 + 15/60; // 8 timmar och 15 minuter, eller 8.25 timmar
```

Java har inbyggda funktioner för att räkna ut tid också, den heter LocalTime, men tyvärr arbetar den med heltal, så vi får omvandla och göra koden rörigare.

```java
    LocalTime onsdag4 = LocalTime.of(8, 15); // 8 timmar och 15 minuter
    float onsdag4 = onsdag4.getHour() + onsdag4.getMinute() / 60; // 8.25 timmar
```

## Lärdomar av detta

- Bra namngivning av variabler gör koden lättare att läsa
- Beräkning av minuter kan vara bråkigt
- Vår kod är som ett Excel-blad
  - Lättöverskådlig
  - Lätt att förstå
  - Lätt att använda
  - Lätt att ändra
  - Lätt att felsöka
- Vi använder variabler för allt som innebär saker vi ska hålla koll på
- Variablerna är våra "minneslappar" för att hålla koll på saker

## Summan av kardemumman

Vi har skapat variabler för varje dag och vecka, sedan har vi skapat en variabel för hela månaden. Vi har också skapat en variabel för genomsnittlig arbetad tid per vecka och dag. Vi har använt oss av `float` för att kunna använda decimaler, för att float är i jämförelse mot `double` mindre minneskrävande och vi behöver inte så många decimaler.

Men då vi är programmerare vill vi förenkla detta, vilket vi självklart kan göra med hjälp av loopar, metoder, listor... men det är sådant vi ska titta på längre fram i denna bok.
