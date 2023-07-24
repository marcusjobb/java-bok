---
title: BFU Övning - Skriv ut en array baklänges
permalink: structure/arraybackwards
nav_order: 3
parent: Strukturer
grand_parent: Övningsuppgifter - Behörighetsgivande förutbildning
author: Marcus Medina
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
id: d2a509c8-0b8d-4bf3-9b1b-1a6b7ed13534
school: https://campus.molndal.se/yh
---

# BFU Övning - Skriv ut en array baklänges

Välkommen till denna spännande övning där vi kommer att utforska hur man skriver ut en array i baklänges ordning. En array är som en samling av saker i en låda, och genom att använda en speciell loop kan vi enkelt ta ut sakerna i motsatt ordning.

## Förkunskaper

Innan vi börjar med denna resa bör du ha lite förkunskaper i programmering med Java. Men oroa dig inte, vi kommer att använda vår magiska for-loop för att utforska denna värld tillsammans!

## Tips

Innan vi kastar oss in i koden, låt oss tänka ut en plan för hur vi kan använda for-loopen för att utföra detta magiska trick. Fundera över hur vi kan använda lådans storlek och numren på lådorna för att hitta sakerna i omvänd ordning.

## Think Twice, Code Once

Ta ett djupt andetag och tänk igenom hur vi kan använda vår for-loop för att lösa detta problem på ett snyggt sätt. Genom att tänka noga innan vi kodar kan vi undvika misstag och skriva koden på ett sätt som alla förstår.

## Planering

Ta några minuter för att planera din resa genom koden. Fundera över hur vi kan använda for-loopen för att utforska lådan baklänges. Skriv gärna ner din plan för att hålla dig på rätt kurs.

## Kodexempel

```java
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        // Skriv din kod här
    }

    private static void printListReverse(String[] array) {
        // Skriv din kod här
    }
}
```

Ändra i ovanstående kod med de delar som saknas.

## Exempel på resultat

```text
Lista på namn:
Luke Leia Han Chewbacca Yoda R2D2 C3PO Darth Vader Obi-Wan

Lista på namn baklänges:
Obi-Wan Darth Vader C3PO R2D2 Yoda Chewbacca Han Leia Luke
```

### Facit

<details>
<summary>Klicka här för att se facit</summary>

```java
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        String[] names = {"Luke", "Leia", "Han", "Chewbacca", "Yoda", "R2D2", "C3PO", "Darth Vader", "Obi-Wan"};
        printListReverse(names);
    }

    private static void printListReverse(String[] array) {
        for (int i = array.length - 1; i >= 0; i--) {
            System.out.println(array[i]);
        }
    }
}
```

</details>

## Summan av kardemumman

Du har precis klarat av att skriva ut en array baklänges! Wow, vilket magiskt trick du utförde där!

Bra jobbat! Genom att använda vår for-loop har du lyckats öppna lådan och ta ut sakerna i motsatt ordning. Fortsätt att utforska och testa dina kunskaper. Det finns alltid mer att lära sig och nya utmaningar att ta sig an.

Du är på rätt väg mot att bli en riktig kodmästare! Fortsätt att kämpa och ha kul med programmering! Lycka till!