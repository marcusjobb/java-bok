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

I denna övning ska vi utforska hur man kan skriva ut en array i baklänges ordning. En array är en samling av värden med samma typ, och genom att använda en for-loop kan vi enkelt iterera genom arrayen och skriva ut värdena i motsatt ordning.

## Förkunskaper

För att lösa denna övning bör du ha grundläggande kunskaper i programmering med Java. Du bör känna till hur man skapar och hanterar arrayer och hur man använder en for-loop för att iterera genom en samling av värden.

## Tips

Innan vi börjar koda är det bra att planera hur vi kan använda en for-loop för att iterera genom arrayen i baklänges ordning. Fundera över hur du kan använda arrayens längd och index för att komma åt värdena i omvänd ordning.

## Think Twice, Code Once

Innan du börjar koda, ta dig tid att tänka över hur du kan använda en for-loop för att lösa uppgiften på ett elegant sätt. Genom att planera och reflektera över lösningen kan du undvika vanliga misstag och skriva mer lättläst och effektiv kod.

## Planering

Innan du dyker in i koden, ta några minuter och planera din lösning. Fundera över hur du kan använda en for-loop för att iterera genom arrayen baklänges. Skriv gärna ner en övergripande algoritm för hur du tänker lösa problemet.

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

Du har precis klarat av att skriva ut en array baklänges!

Bra jobbat!

Genom att använda en for-loop har du lyckats iterera genom arrayen på ett smart sätt och fått värdena att skrivas ut i omvänd ordning. Fortsätt att experimentera med koden och testa olika sätt att lösa problem på. Var öppen för att lära dig nya saker och utmana dig själv. Det finns alltid mer att upptäcka och lära inom programmeringens spännande värld. Så ge aldrig upp, tro på din förmåga och fortsätt att utvecklas som programmerare.

Du är på rätt väg mot att bli en riktig kodexpert! Fortsätt kämpa och ha kul med programmering! Lycka till!

<p style = "display:block; clear:both; page-break-after:always;"></p>