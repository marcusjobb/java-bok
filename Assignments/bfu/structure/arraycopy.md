---
title: BFU Övning - Delning av arrayer
layout: default
author: Campus Mölndal
author_github: CampusMolndalEducation
author_url: "https://github.com/CampusMolndalEducation"
school: Campus Mölndal
date: "2025-08-18 15:43:10"
updated: "2025-09-06 23:35:21"
parent: Strukturer
nav_order: 10
---
# BFU Övning - Delning av arrayer

Arrayer kan vara riktigt knepiga ibland, men låt inte det hindra dig! Låt oss lära oss hur man delar upp en array i mindre bitar och skapar nya arrayer av dem.

# BFU Övning - Delning av arrayer

Vi kommer att börja med en array som innehåller 10 heltal. Uppgiften går ut på att plocka ut de fem första talen och använda dem för att skapa en ny array.

## Tips

- För att kopiera en del av den befintliga arrayen och skapa en ny array, kan du använda array-metoden [CopyOfRange](https://www.tutorialspoint.com/java/util/arrays_copyofrange_short.htm).
- Se till att importera `java.util.Arrays` för att kunna använda `copyOfRange`.
- Glöm inte att använda `printArray`-metoden för att enkelt skriva ut arrayer.

## Think Twice, Code Once

Fundera över stegen innan du börjar koda. Genom att använda färdiga metoder som `copyOfRange`, sparar du tid och undviker felaktiga implementationer.

## Planering

Här är en plan för hur du kan lösa uppgiften:

1. Skapa en array med 10 heltal.
2. Använd `copyOfRange` för att skapa en ny array med de fem första talen från den första arrayen.
3. Skriv ut den nya arrayen.

## Backlog

Låt oss sätta igång med uppgiften:

1. Skapa en array med 10 heltal.
2. Använd `copyOfRange` för att skapa en ny array med de fem första talen från den första arrayen.
3. Skriv ut den nya arrayen.

## Kodgrund

Här är koden som ger dig en fördefinierad array:

```java
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        int[] heltal = { 5, 2, 7, 1, 9, 3, 8, 4, 6, 10 };
        // Ditt kodexempel ska läggas här
    }
}
```

*Koda vilt!*

Men innan du kollar på lösningen, låt oss gå igenom den tillsammans.

## Lösning och förklaring

Här är den fullständiga lösningen på övningen:

<details><summary markdown="span">Lösning</summary>

```java
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        int[] heltal = { 5, 2, 7, 1, 9, 3, 8, 4, 6, 10 };

        // Skapa en ny array som innehåller de fem första talen i den första arrayen
        int[] femFörsta = Arrays.copyOfRange(heltal, 0, 5);

        // Skriv ut den nya arrayen
        System.out.print("Siffror: ");
        printArray(heltal);
        System.out.print("De fem första talen: ");
        printArray(femFörsta);
    }

    private static void printArray(int[] array) {
        for (int i = 0; i < array.length; i++) {
            System.out.print(array[i] + " ");
        }
        System.out.println();
    }
}
```
</details>

### Förklaring av lösningen:

- Vi använder `Arrays.copyOfRange(heltal, 0, 5)` för att skapa en ny array (`femFörsta`) med de fem första talen från `heltal`.
- Sedan använder vi `printArray` för att skriva ut både den ursprungliga arrayen (`heltal`) och den nya arrayen (`femFörsta`).

## Andra användningsområden

Nu har du lärt dig hur man plockar ut en del av en array, men samma teknik kan användas för att skapa delar av listor eller andra datastrukturer. Du kan också använda `copyOfRange` för att extrahera specifika delar av en array och utföra olika beräkningar eller operationer på dem.

## Summering

Förmågan att plocka ut en del av en array är en användbar kunskap inom programmering. Genom att använda `copyOfRange`, kan du enkelt skapa nya delarrayer utan att ändra den ursprungliga arrayen. Övning och experiment är nyckeln till att bli en bättre programmerare. Fortsätt utforska och utmana dig själv för att förbättra dina färdigheter och ha roligt med programmering!
