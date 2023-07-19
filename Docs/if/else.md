---
title: Else
permalink: if/else
nav_order: 2
parent: If
grand_parent: Java
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
id: 657e61c6-5301-47d1-bd1a-5469496ae2b6
school: https://campus.molndal.se/yh
---

# Else

<details open markdown="block">
<summary>
Innehållsförteckning
</summary>
{: .text-delta }

1. TOC
{:toc}
</details>

## Beskrivning

"Annars" är ett nyckelord som används i programmeringsspråket Java för att skapa en alternativ väg i en kodblockstruktur. Det ger möjlighet att utföra en annan sekvens av kod om en "om"-sats utvärderas som falsk. Med andra ord kan "annars" användas för att hantera fall där "om"-villkoret inte är uppfyllt, och programmet kan utföra en annan uppsättning instruktioner istället.
När en "om"-sats utvärderas som sann, utförs de kodinstruktioner som ligger inuti "om"-blocket. Om villkoret i "om"-satsen däremot utvärderas som falskt, kommer programmet att hoppa över kodblocket inom "om" och istället utföra kodblocket inom "annars".

För att använda "annars" måste det alltid följas av en "om". Det är också viktigt att notera att "annars" alltid kommer i slutet av en "om"-sats och kan inte användas utanför den.

## Exempel

Här är ett exempel som visar hur "annars" kan användas för att kontrollera om en person är myndig eller inte baserat på deras ålder:

```java
int ålder = 18;
if (ålder >= 18) {
    System.out.println("Du är myndig");
} else {
    System.out.println("Du är inte myndig");
}

```

I detta exempel är "age" satt till 18. Eftersom 18 är större än eller lika med 18, utvärderas "if"-villkoret som sant, och programmet skriver ut "Du är myndig". Om vi ändrar värdet på "age" till 17 kommer "if"-villkoret att utvärderas som falskt, och programmet skriver ut "Du är inte myndig".
Med hjälp av "else" kan vi låta programmet välja olika vägar att följa beroende på villkoren.

## Sammanfattning

"Else" är ett viktigt nyckelord inom Java som ger möjlighet att skapa en alternativ väg i kodblocket baserat på ett "if"-villkor. Om "if"-satsen utvärderas som sann utförs de kodinstruktioner som ligger inuti "if"-blocket, och om villkoret utvärderas som falskt utförs istället kodinstruktionerna inom "else"-blocket. Det ger programmerare möjlighet att hantera olika fall och göra beslut i sina program.

## Termer och förklaringar

| Term      | Förklaring                                                                                                                                            |
| --------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | --- | ---------- | ----------------------------------------------------------- |
| Else      | Ett nyckelord i Java som används för att skapa en alternativ väg i kodblocket när "if"-villkoret är falskt.                                           |
| If        | Ett nyckelord i Java som används för att skapa en villkorsbaserad kodblockstruktur. Om villkoret är sant, utförs kodinstruktionerna inom "if"-blocket |     | Code block | En grupp av kodinstruktioner som är grupperade tillsammans. |
| Condition | En logisk fråga som kan utvärderas som antingen sann eller falsk.                                                                                     |

## Obligatorisk dad-joke

Varför gillar programmerare att använda "else"?

För att de inte gillar att vara i "if-nite"! 😄