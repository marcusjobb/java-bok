---
title: BFU Övning - Skapa en lista och beräkna summan
layout: default
author: Campus Mölndal
author_github: CampusMolndalEducation
author_url: "https://github.com/CampusMolndalEducation"
school: Campus Mölndal
date: "2025-08-18 15:43:10"
updated: "2025-09-06 23:35:21"
parent: Strukturer
nav_order: 40
---
# BFU Övning - Skapa en lista och beräkna summan

Välkommen till en spännande övning där vi ska utforska hur man skapar en lista med 10 tal och beräknar summan av dessa tal. Oroa dig inte om du är nybörjare, vi kommer att använda enkel och begriplig kod som alla kan förstå!

## Förkunskaper

Du behöver inga specifika förkunskaper för den här övningen, men det är bra om du har grundläggande kunskaper i programmering och förstår konceptet med listor.

## Tips

- Börja med att skapa en tom lista där du kan lagra dina tal.
- Använd en loop för att fylla listan med 10 tal. Du kan välja vilka tal du vill använda eller be användaren mata in dem.
- Efter att listan är skapad, använd en loop för att beräkna summan av talen.

## Innan du kodar, tänk efter

Ta några minuter att tänka över hur du vill närma dig uppgiften. Fundera över vilken typ av loop som kan användas för att fylla listan med tal, och hur du kan hålla koll på summan under beräkningsprocessen. Genom att planera i förväg kan du undvika vanliga misstag och skapa en effektiv lösning.

## Så här löser du uppgiften

För att lösa denna uppgift kan du använda en for-loop för att fylla listan med 10 tal. Du kan sedan använda en separat for-loop för att iterera över listan och beräkna summan av talen. Se till att du deklarerar en variabel för att hålla summan och adderar varje tal till den variabeln under iterationen.

## Backlog - Steg för steg

1. Skapa en tom lista där du kan lagra dina tal.
2. Använd en for-loop för att fylla listan med 10 tal (du kan välja vilka tal du vill).
3. Deklarera en variabel för att hålla summan av talen.
4. Använd en separat for-loop för att iterera över listan och beräkna summan.
5. Skriv ut den beräknade summan.

## Koden

Här är ett exempel på hur du kan deklarera en lista och beräkna summan av dess element i Java:

```java
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        // Skapa en tom lista
        ArrayList<Integer> numbers = new ArrayList<>();

        // Använd en for-loop för att fylla listan med 10 tal (exempelvis 1 till 10)
        for (int i = 1; i <= 10; i++) {
            numbers.add(i);
        }

        // Deklarera en variabel för att hålla summan av talen
        int sum = 0;

        // Använd en for-loop för att iterera över listan och beräkna summan
        for (int number : numbers) {
            sum += number;
        }

        // Skriv ut den beräknade summan
        System.out.println("Summan av talen är: " + sum);
    }
}
```

## Lösningen och förklaring

<details><summary markdown="span">Lösning</summary>

Lösningen till denna övning består av en Java-kod som skapar en lista med 10 tal och beräknar deras summa.

Förklaring av koden:

- Vi börjar med att importera `ArrayList` från `java.util`-paketet för att kunna använda en dynamisk lista i vår kod.
- Vi deklarerar en ny `ArrayList` med namnet `numbers` som ska hålla heltal (Integer).
- Sedan använder vi en for-loop för att fylla listan med talen 1 till 10.
- Vi deklarerar en variabel `sum` som ska hålla summan av talen och sätter den till 0.
- Genom en ny for-loop går vi igenom varje tal i listan och adderar det till summan.
- Till slut skriver vi ut den beräknade summan med hjälp av `System.out.println`.

### Observera

Denna uppgift kan också lösas enkelt med 'stream':

```java
int sum = Arrays.stream(array).sum();
```

</details>

## Andra användningsområden

Denna kod kan användas som grund för att beräkna summan av talen i andra listor eller för att utforska andra beräkningsoperationer med listor. Du kan också utöka koden för att låta användaren mata in sina egna tal eller utforska olika typer av loopar för att fylla listan med värden.

1. Använd samma kod för att beräkna summan av talen i en lista med decimaltal.
2. Skapa en ny lista med tal och ändra koden för att beräkna medelvärdet av dessa tal.
3. Utöka koden för att låta användaren mata in egna tal och beräkna summan av dessa tal.

## Avslutningsvis

Grattis! Du har nu framgångsrikt skapat en lista med 10 tal och beräknat deras summa. Genom att experimentera och öva regelbundet kommer du att stärka dina programmeringsfärdigheter och bli en mer självsäker kodare. Fortsätt att utforska, lära och utveckla dina kunskaper. Du är på rätt väg mot att bli en fantastisk programmerare! Lycka till! :)
