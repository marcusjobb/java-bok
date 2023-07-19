---
title: Invertera en array
permalink: datastructures/exercises/ovning3
nav_order: 8
parent: exercises
grand_parent: Datastrukturer
author: Marcus Medina
date: 2023-07-05
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: Java
id: 71f79975-5ba6-4a67-90cd-11a84a1434a8
school: https://campus.molndal.se/yh
---

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
Det är bra om du kan lösa uppgiften utan att använda Java Streams. Om du vill kan du också lösa uppgiften med hjälp av Java Streams. Det är dock inte ett krav. Men det är alltid bra att vara bekant med Java Streams. Även om du helst inte vill använda Java Streams i denna uppgift kan det vara bra att lösa uppgiften med hjälp av Java Streams också för att se hur det kan göras.
Om du löser det utan Java Streams har du lärt dig algorithmiskt tänkande. Om du löser det med Java Streams har du lärt dig att använda Java Streams. Båda är bra att kunna. Men i detta fall rekommenderar jag att du försöker lösa det utan Java Streams först.
## Kodmall
```java
import java.util.Arrays;
public class ArrayInverter {
    public static String[] reverseArray(String[] words) {
        // Implementera kod här
    }
    // Exempelanvändning
    public static void main(String[] args) {
        String[] words = { "Katt", "Hund", "Kanin", "Capybara" };
        String[] reversed = reverseArray(words);
        System.out.println(String.join(", ", reversed));
}
```
## Förväntad output
Capybara, Kanin, Hund, Katt
## Facit
<details><summary>Klicka här för att se facit</summary>
        String[] reversed = new String[words.length];
        int index = 0;
        for (int i = words.length - 1; i >= 0; i--) {
            reversed[index] = words[i];
            index++;
        }
        return reversed;
OBS! Detta kan också lösas med hjälp av Java Streams:```java
// Metod för att vända på en array av strängar
public static String[] ReverseArray(String[] words) {
    // Använda metoden reverse() från klassen Collections för att vända på arrayen
    Collections.reverse(Arrays.asList(words));
    // Konvertera arrayen tillbaka till en vanlig array av strängar
    return words;
I denna kod har vi en statisk metod `ReverseArray` som tar emot en array av strängar som argument och returnerar en ny array där ordning på elementen är omvänd. För att uppnå detta används `reverse()`-metoden från `Collections`-klassen. Först konverteras arrayen till en lista med hjälp av `Arrays.asList()`-metoden, sedan används `reverse()` för att vända på ordningen på elementen i listan. Till slut konverteras listan tillbaka till en array med hjälp av `toArray()`-metoden.
Exempel på användning av `ReverseArray`-metoden:
String[] words = {"Java", "är", "roligt"};
String[] reversedWords = ReverseArray(words);
System.out.println(Arrays.toString(reversedWords));
Output:
[roligt, är, Java]
I detta exempel skapas en array av strängar med tre element. Sedan anropas `ReverseArray`-metoden och den omvända arrayen lagras i en ny variabel `reversedWords`. Slutligen skrivs den omvända arrayen ut med hjälp av `Arrays.toString()`-metoden. Resultatet blir att orden "Java" och "roligt" byter plats i arrayen.