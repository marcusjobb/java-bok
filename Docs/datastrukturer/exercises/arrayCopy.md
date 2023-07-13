---
author: Marcus Medina
title: Plocka ut en del av en array och skapa en ny array av det.
nav_order: 2
parent: Array-övningar
grand_parent: Datastrukturer
permalink: datastrukturer/exercises/arrayCopy
date: 2023-07-04
layout: default
id: 4c7fecf5-fe6e-4f20-bb41-bed431c0c29f
author_url: https://marcusmedina.pro
author_github: https://github.com/marcusjobb
school: https://campus.molndal.se/yh
---

# Arraycopy

<details open markdown="block">
  <summary>
    Innehållsförteckning
  </summary>
  {: .text-delta }
1. Innehållsförteckning
{:toc}
</details>

## Plocka ut en del av en array och skapa en ny array av det

I detta exempel visar vi hur du kan plocka ut en del av en array och skapa en ny array av det i Java. Vi skapar en ursprunglig array med 10 heltal och kopierar de fem första talen till en ny array.

### Kodexempel

```java
public class MainClass {
    public static void main(String[] args) {
        // Skapa en array med 10 heltal
        int[] heltal = { 5, 2, 7, 1, 9, 3, 8, 4, 6, 10 };

        // Skriv ut den ursprungliga arrayen
        System.out.print("Siffror: ");
        printArray(heltal);

        // Skapa en ny array som innehåller de fem första talen i den ursprungliga arrayen
        int[] femForsta = new int[5];
        System.arraycopy(heltal, 0, femForsta, 0, 5);

        // Skriv ut den nya arrayen
        System.out.print("De fem första talen: ");
        printArray(femForsta);
    }

    private static void printArray(int[] array) {
        for (int num : array) {
            System.out.print(num + " ");
        }
        System.out.println();
    }
}
```

### Resultat

```
Siffror: 5 2 7 1 9 3 8 4 6 10
De fem första talen: 5 2 7 1 9
```

I det här exemplet skapar vi en array `heltal` med 10 heltal. Vi använder `System.arraycopy` för att kopiera de fem första talen från `heltal` till en ny array `femForsta`. Vi skriver sedan ut både den ursprungliga arrayen och den nya arrayen genom att använda metoden `printArray`.

Metoden `printArray` används för att skriva ut innehållet i en array. Den använder en förbättrad `for`-loop för att iterera över varje element i arrayen och skriva ut det.

Observera att detta bara är ett exempel på hur du kan lösa uppgiften. Det finns flera sätt att välja en del av en array i Java. Du kan också använda metoder som `Arrays.copyOfRange` eller använda en `for`-loop för att kopiera elementen manuellt.

Det är viktigt att notera att arrayindex i Java börjar på 0. I exemplet ovan kopierar vi elementen från index 0 till index 4, vilket motsvarar de fem första talen i arrayen.

Det är alltid bra att experimentera och utforska olika sätt att lösa problemet på egen hand. Genom att göra det kan du utöka din förståelse för arrayer och Java-programmering som helhet.

Jag hoppas att detta exempel har varit användbart för dig att förstå hur man plockar ut en del av en array och skapar en ny array av det i Java. Om du har fler frågor eller behöver ytterligare hjälp, tveka inte att fråga!