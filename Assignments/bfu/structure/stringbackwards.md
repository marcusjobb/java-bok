---
title: BFU Övning - Sträng baklänges
layout: default
author: Campus Mölndal
author_github: CampusMolndalEducation
author_url: "https://github.com/CampusMolndalEducation"
school: Campus Mölndal
date: "2025-08-18 15:43:10"
updated: "2025-09-06 23:35:21"
parent: Strukturer
nav_order: 50
---
# BFU Övning - Sträng baklänges

## Beskrivning

Välkomna till denna spännande övning där vi ska träna på stränghantering och loopar genom att skriva ut en given sträng baklänges. Vi kommer be dig att ange en sträng, och sedan kommer vi att skriva ut den i omvänd ordning.

## Förkunskaper

Innan vi börjar ska du ha grundläggande kunskaper i programmering och vara bekant med hur man hanterar strängar och loopar i Java.

## Tips

- Tänk på att en sträng i Java kan behandlas som en serie tecken.
- Använd en loop, till exempel en for-loop, för att gå igenom strängen baklänges.
- Var noga med att använda rätt loop-indexering för att få tecknen i rätt ordning.

## Think Twice, Code Once

Innan du sätter igång med koden, ta några minuter och fundera över hur du kan vända på en sträng. Planera din lösning och identifiera de steg du behöver ta för att uppnå det önskade resultatet. Att tänka igenom koden noggrant innan du börjar skriva kan hjälpa dig att undvika vanliga misstag och göra din kod mer effektiv.

## Planering

För att skriva ut strängen baklänges, följ dessa steg:

1. Läs in en sträng från användaren.
2. Bestäm strängens längd och spara den i en variabel.
3. Använd en loop för att iterera genom strängen baklänges.
4. Inuti loopen, skriv ut varje tecken i strängen, börja från det sista tecknet och gå mot det första.

## Kodgrund

Här är ett exempel på hur du kan läsa in en sträng från användaren i Java:

```java
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ange en sträng: ");
        String input = scanner.nextLine();
        // Här kan du fortsätta med att skriva din lösning.
    }
}
```

### Exempel på ord

Här är några roliga ord du kan prova att skriva ut baklänges:
1. "banana"
2. "butterfly"
3. "chocolate"
4. "computer"
5. "deified"
6. "elephant"
7. "fireworks"
8. "guitar"
9. "level"
10. "programming"
11. "rainbow"
12. "rotator"
13. "sunshine"
14. "tacocat"

Ha kul med att testa ditt program och utforska olika utmaningar för att förbättra dina färdigheter som kodare!

## Lösning och förklaring

Här är en möjlig lösning på övningen:

<details><summary markdown="span">Lösning</summary>

```java
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ange en sträng: ");
        String input = scanner.nextLine();

        // Bestäm strängens längd
        int length = input.length();

        // Skriv ut strängen baklänges
        for (int i = length - 1; i >= 0; i--) {
            System.out.print(input.charAt(i));
        }
    }
}
```

</details>

### Förklaring av lösningen:

- Vi läser in en sträng från användaren och sparar den i variabeln `input`.
- Sedan bestämmer vi längden på strängen och sparar den i variabeln `length`.
- Genom att använda en for-loop går vi igenom strängen baklänges, och för varje iteration skriver vi ut det aktuella tecknet med hjälp av `charAt()`-metoden.

## Andra användningsområden

Att skriva ut en sträng baklänges är ett bra sätt att öva på loopar och stränghantering. Det finns många andra användningsområden för denna typ av kod. Till exempel kan du använda en liknande lösning för att kontrollera om en sträng är ett palindrom. Ett palindrom är en sträng som är densamma oavsett om den läses framåt eller baklänges. Ett exempel på ett palindrom är ordet "kajak". Om du skriver ut ordet baklänges kommer du att få samma resultat.

## Summan av kardemumman

Grattis! Du har nu skapat ett program som skriver ut en sträng baklänges. Att programmera handlar om att experimentera och ha kul. Fortsätt att öva och utmana dig själv för att bli en bättre kodare. Du kan lära dig så mycket genom att utforska olika programmeringsproblem och testa nya lösningar. Tro på dig själv och lita på din förmåga att lära dig mer. Ha kul med programmering - det är en fantastisk resa!
