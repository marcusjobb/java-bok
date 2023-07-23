---
title: BFU Övning - Sträng baklänges
permalink: structure/stringbackwards
nav_order: 7
parent: Strukturer
grand_parent: Övningsuppgifter - Behörighetsgivande förutbildning
author: Marcus Medina
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
id: cf2a76cf-4b2e-4d05-b0dd-38ab60a5a59c
school: https://campus.molndal.se/yh
---

# BFU Övning - Sträng baklänges

## Beskrivning

Denna övning syftar till att träna på stränghantering och loopar genom att skriva ut en given sträng baklänges. Användaren kommer att bli ombedd att ange en sträng, och programmet kommer sedan att skriva ut strängen i omvänd ordning.

## Förkunskaper

För att lösa denna övning bör du ha grundläggande kunskaper i programmering och vara bekant med hur man hanterar strängar och loopar i Java.

## Tips

- Kom ihåg att en sträng i Java kan behandlas som en serie tecken.
- Använd en loop (t.ex. en for-loop) för att gå igenom strängen baklänges.
- Var noga med att använda rätt loop-indexering för att få tecknen i rätt ordning.

## Think Twice, Code Once

Innan du börjar koda, ta några minuter och fundera över hur du kan vända på en sträng. Planera din lösning och identifiera de steg du behöver ta för att uppnå det önskade resultatet. Att tänka igenom koden noggrant innan du börjar skriva kan hjälpa dig att undvika vanliga misstag och göra din kod mer effektiv.

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
Absolut! Här är listan med orden sorterade i stigande ordning med siffror framför dem:

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

Ha kul med testing av ditt program och fortsätt att utforska olika utmaningar för att förbättra dina färdigheter som kodare!Testa att använda denna kod för att skriva ut de roliga orden baklänges och se vad som händer!

## Lösning och förklaring

Här är en möjlig lösning på övningen:

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

### Förklaring av lösningen:

- Vi läser in en sträng från användaren och sparar den i variabeln `input`.
- Sedan bestämmer vi längden på strängen och sparar den i variabeln `length`.
- Genom att använda en for-loop går vi igenom strängen baklänges, och för varje iteration skriver vi ut det aktuella tecknet med hjälp av `charAt()`-metoden.

## Andra användningsområden

Att skriva ut en sträng baklänges är ett bra sätt att öva på loopar och stränghantering. Det finns många andra användningsområden för denna typ av kod. Till exempel kan du använda en liknande lösning för att kontrollera om en sträng är ett palindrom. Ett palindrom är en sträng som är densamma oavsett om den läses framåt eller baklänges. Ett exempel på ett palindrom är ordet "kajak". Om du skriver ut ordet baklänges kommer du att få samma resultat.

## Summan av kardemumman

Grattis! Du har nu skapat ett program som skriver ut en sträng baklänges. Att programmera handlar om att experimentera och ha kul. Fortsätt att öva och utmana dig själv för att bli en bättre kodare. Du kan lära dig så mycket genom att utforska olika programmeringsproblem och testa nya lösningar. Tro på dig själv och lita på din förmåga att lära dig mer. Ha kul med programmering - det är en fantastisk resa!

<p style = "display:block; clear:both; page-break-after:always;"></p>