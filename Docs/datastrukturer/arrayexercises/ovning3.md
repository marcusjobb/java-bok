---
title: Invertera en array
permalink: datastrukturer/arrayexercises/ovning3
nav_order: 8
parent: Array övningar
grand_parent: Home
author: Marcus Medina
date: 2023-07-05
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: Java
id: 71f79975-5ba6-4a67-90cd-11a84a1434a8
school: https://campus.molndal.se/yh
---

# Invertera en array

<details open markdown="block">
<summary>
Innehållsförteckning
</summary>
{: .text-delta }

1. TOC
{:toc}
</details>

## Beskrivning av övningen

Skriv en metod som tar emot en array av strängar och inverterar ordningen på elementen i arrayen. Metoden ska returnera den resulterande inverterade arrayen.

## Kodmall

```java
public class Main {
    public static String[] reverseArray(String[] words) {
        // Implementera kod här
    }
    public static void main(String[] args) {
        String[] words = { "Katt", "Hund", "Kanin", "Capybara" };
        String[] reversed = reverseArray(words);
        System.out.println(String.join(", ", reversed));
    }
}
```

## Förväntad output

Capybara, Kanin, Hund, Katt

## Facit

<details><summary>Klicka här för att se facit</summary>

```java
public static String[] reverseArray(String[] words) {
    String[] reversed = new String[words.length];
    int index = 0;
    for (int i = words.length - 1; i >= 0; i--) {
        reversed[index] = words[i];
        index++;
    }
    return reversed;
}
```

OBS! Detta kan också lösas med hjälp av metoden `reverse()` i klassen `Collections`:

```java
List<String> list = Arrays.asList(words);
Collections.reverse(list);
return list.toArray(new String[list.size()]);
```

I Java kan du också använda `Arrays`-klassen för att arbeta med arrayer. I det här exemplet har vi en metod `reverseArray` som tar emot en array av strängar och returnerar en ny array där ordningen av elementen har vänts. Vi använder `stream()`-metoden för att skapa en ström av elementen i arrayen. Sedan använder vi metoden `reversed()` för att vända på ordningsföljden av elementen i strömmen. Slutligen använder vi metoden `toArray()` för att konvertera strömmen till en ny array.

```java
public static String[] reverseArray(String[] words) {
    return Arrays.stream(words)
        .reversed()
        .toArray(String[]::new);
}
```

</details>