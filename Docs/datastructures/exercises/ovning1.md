---
title: Summera element i en array
permalink: datastructures/exercises/ovning1
nav_order: 4
parent: exercises
grand_parent: Datastrukturer
author: Marcus Medina
date: 2023-07-05
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: Java
id: de74e26f-1ef7-401e-a349-43343b27e0a6
school: https://campus.molndal.se/yh
---

---

# Summera element i en array

<details open markdown="block">
  <summary>
    Innehållsförteckning
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

## Beskrivning av övningen

Skriv en metod som tar emot en array av heltal och summerar alla element i arrayen. Returnera den resulterande summan.
Det är bra om du kan lösa uppgiften utan att använda LINQ. Om du vill kan du också lösa uppgiften med hjälp av LINQ. Det är dock inte ett krav. Men det är alltid bra att vara bekant med LINQ. Även om du helst inte vill använda LINQ i denna uppgift kan det vara bra att lösa uppgiften med hjälp av LINQ också för att se hur det kan göras.
Om du löser det utan Linq har du lärt dig algorithmiskt tänkande. Om du löser det med LINQ har du lärt dig att använda LINQ. Båda är bra att kunna. Men i detta fall rekommenderar jag att du försöker lösa det utan LINQ först.

## Kodmall

```java
public class Main {
    public static int sumArray(int[] numbers) {
        // Implementera kod här
    }
    public static void main(String[] args) {
        int[] numbers = { 1, 2, 3, 4, 5 };
        int sum = sumArray(numbers);
        System.out.println(sum);
}
```

#### Förväntad output

15

#### Facit

<details><summary>Klicka här för att se facit</summary>
        int sum = 0;
        for (int i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
OBS! Detta kan också lösas med hjälp av LINQ:
import java.util.Arrays;
        return Arrays.stream(numbers).sum();