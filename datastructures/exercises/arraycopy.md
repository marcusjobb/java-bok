---
title: Plocka ut en del av en array och skapa en ny array av det.
permalink: exercises/arraycopy
nav_order: 2
parent: exercises
grand_parent: Datastrukturer
author: Marcus Medina
date: 2023-07-04
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: Java
id: 4c7fecf5-fe6e-4f20-bb41-bed431c0c29f
school: https://campus.molndal.se/yh
---

# Plocka ut en del av en array och skapa en ny array av det.

I detta exempel visar vi hur du kan plocka ut en del av en array och skapa en ny array av det i C#. Vi skapar en ursprunglig array med 10 heltal och kopierar de fem första talen till en ny array.

### Kodexempel

```csharp
using System;

public class Program
{
    public static void Main()
    {
        // Skapa en array med 10 heltal
        int[] heltal = { 5, 2, 7, 1, 9, 3, 8, 4, 6, 10 };

        // Skriv ut den ursprungliga arrayen
        Console.Write("Siffror: ");
        PrintArray(heltal);

        // Skapa en ny array som innehåller de fem första talen i den ursprungliga arrayen
        int[] femForsta = new int[5];
        Array.Copy(heltal, femForsta, 5);

        // Skriv ut den nya arrayen
        Console.Write("De fem första talen: ");
        PrintArray(femForsta);

        Console.WriteLine();
    }

    private static void PrintArray(int[] array)
    {
        foreach (int num in array)
        {
            Console.Write(num + " ");
        }
    }
}
```

### Resultat

```
Siffror: 5 2 7 1 9 3 8 4 6 10
De fem första talen: 5 2 7 1 9
```

I det här exemplet skapar vi en array `heltal` med 10 heltal. Vi använder `Array.Copy` för att kopiera de fem första talen från `heltal` till en ny array `femForsta`. Vi skriver sedan ut både den ursprungliga arrayen och den nya arrayen genom att använda metoden `PrintArray`.

Metoden `PrintArray` används för att skriva ut innehållet i en array. Den använder en `foreach`-loop för att iterera över varje element i arrayen och skriva ut det.

Observera att detta bara är ett exempel på hur du kan lösa uppgiften. Det finns flera sätt att välja en del av en array i C#. Du kan också använda metoder som `ArraySegment` eller använda en `for`-loop för att kopiera elementen manuellt.

Det är viktigt att notera att arrayindex i C# börjar på 0. I exemplet ovan kopierar vi elementen från index 0 till index 4, vilket motsvarar de fem första talen i arrayen.

Det är alltid bra att experimentera och utforska olika sätt att lösa problemet på egen hand. Genom att göra det kan du utöka din förståelse för arrayer och C#-programmering som helhet.