---
author: Marcus Medina
title: Summera element i en array
nav_order: 4
parent: Array-övningar
grand_parent: Datastrukturer
permalink: datastrukturer/exercises/ovning1
date: 2023-07-05
layout: default
school: https://campus.molndal.se/yh
author_github: https://github.com/marcusjobb
id: de74e26f-1ef7-401e-a349-43343b27e0a6
author_url: https://marcusmedina.pro
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

```java
15
```

#### Facit

<details><summary>Klicka här för att se facit</summary>

```java 
    int sum = 0;
    for (int i = 0; i < numbers.length; i++) {
        sum += numbers[i];
    }
    return sum;
```
OBS! Detta kan också lösas med hjälp av den inbyggda metoden `sum` i klassen `Arrays`:

```java
    return Arrays.stream(numbers).sum();
```