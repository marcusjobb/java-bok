---
title: Evig loop
permalink: loop/eternalloop
nav_order: 15
parent: Loopar
grand_parent: Home
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
id: 3cd53919-7548-4c25-8922-fb515e4df908
school: https://campus.molndal.se/yh
---

# Evig loop

En oändlig loop är en loop som inte har något villkor för att avslutas och kommer att köra kontinuerligt tills programmet avbryts. Det kan vara användbart i vissa situationer, till exempel när du skapar ett program som körs i en slinga och kontinuerligt utför några uppgifter i bakgrunden. Här är ett exempel på en oändlig loop:

```java
while (true) {
// Kod som körs kontinuerligt
}
```

Observera att en oändlig loop kan leda till att programmet hänger sig om det inte finns något sätt att avbryta loopen manuellt.

Detta gör man när man testar eller när man har en brytning i loopen som gör att den avslutas.

## Fördelar

Oändliga loopar har flera fördelar jämfört med andra typer av loopar:

- De är enkla att använda och förstå.
- De är effektiva eftersom de inte kräver några extra variabler eller villkor för att kontrollera antalet iterationer.
- De är säkrare än andra typer av loopar eftersom de inte kräver någon manuell hantering av indexer eller iterationsspecifikationer.

## Nackdelar

Oändliga loopar har flera nackdelar jämfört med andra typer av loopar:

- De kan vara svåra att felsöka eftersom de inte har något villkor för att avsluta loopen.
- De kan leda till att programmet hänger sig om det inte finns något sätt att avbryta loopen manuellt.
- De kan vara svåra att felsöka eftersom de inte har något villkor för att avsluta loopen.

## Exempel

Här är ett exempel på en oändlig loop som skriver ut talen 1 till 5:

```java
while (true) {
    System.out.println("1");
    System.out.println("2");
    System.out.println("3");
    System.out.println("4");
    System.out.println("5");
}
```

Resultatet av koden ovan kommer att vara:

```text
1
2
3
4
5
1
2
3
osv...
```

## Exempel på oändlig loop

Här är ett exempel på en meny som körs i en oändlig loop.
Fördelen med detta är att vi inte behöver veta hur många gånger användaren vill upprepa loopen, utan vi kan låta användaren avsluta loopen när den är klar.

```java

while (true) {
    System.out.println("Välj ett alternativ:");
    System.out.println("1. Visa alla produkter");
    System.out.println("2. Lägg till en produkt");
    System.out.println("3. Ta bort en produkt");
    System.out.println("4. Avsluta programmet");

    int choice = scanner.nextInt();

    // Observera att switch break inte bryter loopen i sig
    // same name different shit... eller vad man ska säga
    bool breakLoop=false;
    switch (choice) {
        case 1:
            // Visa alla produkter
            break;
        case 2:
            // Lägg till en produkt
            break;
        case 3:
            // Ta bort en produkt
            break;
        case 4:
            // Avsluta programmet
            breakLoop=true;
            break;
        default:
            System.out.println("Felaktigt val");
            break;
    }

    if (breakLoop) break; // bryter loopen
}
```