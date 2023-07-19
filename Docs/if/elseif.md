---
title: Else if
permalink: if/elseif
nav_order: 4
parent: If
grand_parent: Java
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
id: 1974ec3c-7ac9-47e6-8ec8-6cbaab55be08
school: https://campus.molndal.se/yh
---

# Else if

Else if är en viktig konstruktion inom programmering som erbjuder flexibilitet och tydlighet när det gäller att hantera olika villkor och beslut. Det kan vara användbart i olika scenarier där vi behöver göra flera olika val baserat på olika förutsättningar.

## Användningsområden

Else if kan tillämpas i olika situationer, inklusive:

1. **Betygsberäkning**: Om vi har ett betygssystem där vi behöver tilldela olika betyg baserat på en students poäng, kan vi använda Else if för att göra olika beslut baserat på poängintervallet.
2. **Validering**: Om vi behöver validera olika typer av data, som användarinput eller inmatade värden, kan vi använda Else if för att göra olika valideringsbeslut baserat på typen av data eller innehållet.
3. **Menyval**: Om vi har en meny med flera alternativ kan vi använda Else if för att hantera olika val baserat på användarens inmatning.
4. **Datum- och tidshantering**: Vi kan använda Else if för att hantera olika datum- och tidsscenarier, t.ex. att kontrollera om det är morgon, eftermiddag eller kväll och vidta olika åtgärder baserat på det.

## Kodexempel

Här är några kodexempel som visar användningen av Else if i Java:

### Betygsberäkning

```java
int poäng = 75;
if (poäng >= 90) {
    System.out.println("A");
} else if (poäng >= 80) {
    System.out.println("B");
} else if (poäng >= 70) {
    System.out.println("C");
} else if (poäng >= 60) {
    System.out.println("D");
} else {
    System.out.println("F");
}
```

I detta exempel utvärderar vi en elevs poäng och skriver ut det motsvarande betyget beroende på poängintervallet.

### Validering

Här utvärderar vi input från användaren

```java
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);

    System.out.println("Vänligen ange din ålder:");
    int age = scanner.nextInt();

    if (age < 0) {
        System.out.println("Åldern kan inte vara negativ.");
    } else if (age < 3) {
        System.out.println("Barnrumpa, du är för söt!");
    } else if (age < 18) {
        System.out.println("Ung och full av energi!");
    } else if (age < 40) {
        System.out.println("Medelålders och i sin bästa form!");
    } else if (age < 60) {
        System.out.println("Gamling, men fortfarande aktiv!");
    } else if (age < 100) {
        System.out.println("Jisses, du är gammal!");
    } else {
        System.out.println("Du är uråldrig! Respekt!");
    }

    scanner.close();
    }
}
```

### Menyval

```java
System.out.println("Välj ett alternativ:");
System.out.println("1. Visa saldo");
System.out.println("2. Gör en insättning");
System.out.println("3. Gör ett uttag");
int val = Integer.parseInt(System.console().readLine());
if (val == 1) {
    // Visa saldo
} else if (val == 2) {
    // Gör en insättning
} else if (val == 3) {
    // Gör ett uttag
} else {
    System.out.println("Ogiltigt val");
}
```

I detta exempel kan användaren välja ett alternativ från en meny genom att ange ett nummer. Beroende på användarens val kan olika handlingar utföras.

### Datum- och tidshantering

```java
import java.time.LocalTime;

LocalTime nu = LocalTime.now();
if (nu.getHour() < 12) {
    System.out.println("God morgon!");
} else if (nu.getHour() < 18) {
    System.out.println("God eftermiddag!");
} else {
    System.out.println("God kväll!");
}
```

I detta exempel används Else if för att kontrollera aktuell tid och skriva ut lämpliga hälsningar baserat på tiden på dygnet.

## Sammanfattning

Else if är en viktig konstruktion inom programmering som erbjuder flexibilitet och tydlighet när det gäller att hantera olika villkor och beslut. Det kan vara användbart i olika scenarier där vi behöver göra flera olika val baserat på olika förutsättningar. Det är dock viktigt att vara medveten om begränsningarna och komplexiteten som kan uppstå när man använder Else if.

Obligatorisk dad-joke:

Varför gillar programmerare att använda Else if?

För att de har så många val i livet och villkorlig kärlek är bara en av dem! 😄