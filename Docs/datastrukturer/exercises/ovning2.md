---
author: Marcus Medina
title: Hitta det största elementet i en array
nav_order: 6
parent: Array-övningar
grand_parent: Datastrukturer
permalink: datastrukturer/exercises/ovning2
date: 2023-07-05
layout: default
school: https://campus.molndal.se/yh
author_github: https://github.com/marcusjobb
id: a62e5100-5fbf-4976-b4a2-61754e794004
author_url: https://marcusmedina.pro
---

## Beskrivning av övningen

Skriv en metod som tar emot en array av heltal och returnerar det största elementet i arrayen.

Det är bra om du kan lösa uppgiften utan att använda LINQ. Om du vill kan du också lösa uppgiften med hjälp av LINQ. Det är dock inte ett krav. Men det är alltid bra att vara bekant med LINQ. Även om du helst inte vill använda LINQ i denna uppgift kan det vara bra att lösa uppgiften med hjälp av LINQ också för att se hur det kan göras.
Om du löser det utan Linq har du lärt dig algorithmiskt tänkande. Om du löser det med LINQ har du lärt dig att använda LINQ. Båda är bra att kunna. Men i detta fall rekommenderar jag att du försöker lösa det utan LINQ först.

## Kodmall

```java
public static int findLargestElement(int[] numbers) {
    // Implementera kod här
}
// Exempelanvändning
int[] numbers = { 5, 8, 2, 11, 3 };
int largest = findLargestElement(numbers);
System.out.println(largest);

```

## Förväntad output

```
11
```

## Facit

<details><summary>Klicka här för att se lösningen</summary>

```java
    int largest = numbers[0];
    for (int i = 1; i < numbers.length; i++) {
        if (numbers[i] > largest) {
            largest = numbers[i];
        }
    }
    return largest;
```

OBS! Detta kan också lösas med hjälp av det inbyggda metoden `max()` i klassen `Arrays`:

```java
    return Arrays.stream(numbers).max().getAsInt();
```