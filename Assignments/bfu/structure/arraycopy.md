---
title: BFU Övning - Delning av arrayer
permalink: structure/arraycopy
nav_order: 1
parent: Strukturer
grand_parent: Övningsuppgifter - Behörighetsgivande förutbildning
author: Marcus Medina
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
id: e86aaa09-bc42-412d-b325-be92d0d33125
school: https://campus.molndal.se/yh
---

# BFU Övning - Delning av arrayer

Säga vad man vill, men Arrayer är väldigt osamarbetsvilliga ibland. Man kan inte lägga till eller ta bort element ur dem, så hur gör man när man vill ha en array med bara halva innehållet eller dela upp en array i två?

## Övning: Plocka ut en del av en array och skapa en ny array av det

Denna övning går ut på att skapa en array med 10 heltal och sedan plocka ut de fem första talen för att skapa en ny array.

## Tips

- Kolla in array-metoden [CopyOfRange](https://www.tutorialspoint.com/java/util/arrays_copyofrange_short.htm) för att kopiera en del av den befintliga arrayen och skapa en ny array.
- Glöm inte att importera `java.util.Arrays` för att kunna använda `copyOfRange`.
- Använd `printArray`-metoden för att skriva ut arrayer.

## Think Twice, Code Once

Att använda färdiga metoder som `copyOfRange` sparar tid och minimerar risken för felaktig implementation. Planera din lösning genom att tänka igenom stegen innan du börjar koda.

## Planering

1. Skapa en array med 10 heltal.
2. Använd `copyOfRange` för att skapa en ny array med de fem första talen från den första arrayen.
3. Skriv ut den nya arrayen.

## Backlog

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

Innan du kollar på lösningen ;)

## Lösning och förklaring

Här är den fullständiga lösningen på övningen:

<details>
<summary markdown="span">Lösning</summary>

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
- Vi använder sedan `printArray` för att skriva ut både den ursprungliga arrayen (`heltal`) och den nya arrayen (`femFörsta`).

## Andra användningsområden

Detta exempel visar hur du kan plocka ut en del av en array, men samma teknik kan användas för att skapa delar av listor eller andra datastrukturer. Du kan också använda `copyOfRange` för att extrahera specifika delar av en array och utföra olika beräkningar eller operationer på dem.

## Summan av kardemumman

Att kunna plocka ut en del av en array är en användbar färdighet inom programmering. Genom att använda `copyOfRange` kan du enkelt skapa nya delarrayer utan att ändra den ursprungliga arrayen. Övning och experiment är nyckeln till att bli en bättre programmerare. Fortsätt utforska och utmana dig själv för att förbättra dina färdigheter och ha roligt med programmering!

<p style = "display:block; clear:both; page-break-after:always;"></p>