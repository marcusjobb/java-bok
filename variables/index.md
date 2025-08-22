---
title: Variabler
permalink: variables/index
nav_order: 11
parent: Home
author: Marcus Ackre Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: Java
enhance: false
has_children: true
id: 7ce3b430-4fa5-4f60-9692-e72bd32370f9
mermaid: true
school: https://campus.molndal.se/yh
---

# Variabler

## Introduktion

I detta avsnitt kommer vi att utforska världen av variabler i Java. En variabel
fungerar som en behållare som används för att lagra data under körningstid. I
Java måste alla variabler deklareras innan de kan användas, vilket innebär att
vi måste ange vilken typ av data som variabeln kommer att lagra. Vi kommer att
titta närmare på hur man deklarerar och initierar variabler samt gå igenom
olika datatyper som Java erbjuder.

## TL;DR

I Java är variabler behållare som används för att lagra data. Innan en variabel
används måste den deklareras, vilket innebär att vi måste ange dess datatyp.
Sedan kan vi initiera variabeln genom att tilldela den ett värde. Java erbjuder
olika datatyper som int (heltal), String (text), boolean (sant eller falskt),
double (decimaltal) och char (tecken).

## Vad är en Variabel i Java?

En variabel i Java är en behållare som används för att lagra data. När vi
deklarerar en variabel talar vi om för Java vilken typ av data som kommer att
lagras i den. Detta hjälper kompilatorn att reservera rätt mängd minne för
variabeln.

## Hur Deklarerar och Initierar man Variabler i Java?

För att deklarera en variabel i Java behöver vi ange dess datatyp och ge den
ett namn. Sedan kan vi initiera variabeln genom att tilldela ett värde till
den. Låt oss titta på några exempel:

```java

Datatyp namn = värde;

// Datatyp är variabelns datatyp. Exempel: Heltal, text, decimaltal, mm
// Namn är variabelns namn. Exempel: antal, namn, längd, kattnamn, jediAlias mm
// Värde är det värde som variabeln ska lagra. Exempel: 5, "Obi Wan Kenobi", 3.14 mm

```

### CamelCase

Det är lika bra att lära sig från början, i Java när du skapar variabler
använder du camelCase.

Variabler ska ha namn som förklarar vad de gör, men de kan inte innehålla
mellanslag. Vi kan allså inte skriva såhär

```java
String Namn på katt = "Misse";
```

För att Java kommer att bli förvirrad, den kommer att tänka...

    Ok... dumhuvvet vill ha en datatyp av typen string (text) som heter "Namn" och
    en något som heter "på" och något som heter "katt" men vad är "på" och "katt" för något?
    Den stämmer inte in i mallen, och är det "Namn", "katt" eller "på" som ska heta "Misse"...
    wtf??? Jag klarar inte detta :(  Jag ger upp! :'(

...och sen börjar kompilatorn att gråta i flera bitcyklar och till slut när den
deppat färdigt kommer den att säga till att den inte förstår sig på dig.

<a href="https://en.wikipedia.org/wiki/Camel_case"><img
src="wikipediaCamelCase.png" style="float:right"></a>För att inte göra kompilatorn ledsen använder vi alltså CamelCase.

CamelCase heter så för att skrivformen påminner om en kamels utseende. För att
omvandla vårt `Namn på katt` till CamelCase gör vi så att första bokstaven i
namnet ska bli gemen, och första bokstaven på alla andra ord ska bli versal
`namn På Katt` och sedan tar vi bort alla mellanslag `namnPåKatt`, nu har vi
ett läsbart CamelCase som både du och kompilatorn kan enas om. Vi försöker
skriva koden igen. [Wikipedia](https://en.wikipedia.org/wiki/Camel_case) har
en jättebra artikel om CamelCase och den söta kamelen är lånad från den.

```java
String namnPåKatt = "Misse"
```

Yay! Nu har du en glad kompilator och du kan koda vidare.

## Fler exempel på variabler

```java
// Deklarera och initiera en variabel av typen int.
int number = 1138;

// Deklarera och initiera en variabel av typen String.
String name = "Obi Wan Kenobi"; // I have the high ground!

// Deklarera och initiera en variabel av typen boolean.
boolean isJedi = true; // <-- Observera camelCase

// Deklarera och initiera en variabel av typen double.
double pi = 3.14; // <-- Pi!

// Deklarera och initiera en variabel av typen char.
char letter = 'J';
```

I dessa exempel har vi deklarerat och initierat fem olika typer av variabler. Den första variabeln är av typen int, vilket innebär att den kan lagra heltal. Den andra är av typen String, vilket innebär att den kan lagra text. Den tredje är av typen boolean, vilket innebär att den kan lagra antingen sant eller falskt. Den fjärde är av typen double, vilket innebär att den kan lagra decimaltal. Slutligen är den femte variabeln av typen char, vilket innebär att den kan lagra ett enskilt tecken.

## Termer

Här finns en lista på termer som används i artikeln
| Term | Förklaring |
| --- | --- |
| Variabel | En behållare för att lagra data i Java. |
| Deklarera | Att ange datatyp och namn för en variabel. |
| Initiera | Att tilldela ett värde till en deklarerad variabel. |
| int | Datatyp för heltal i Java. |
| String | Datatyp för textsträngar i Java. |
| boolean | Datatyp för sanningsvärden (true eller false) i Java. |
| double | Datatyp för decimaltal i Java. |
| char | Datatyp för enstaka tecken i Java. |

## Slutsats

Grattis! Nu har du lärt dig om variabler i Java och hur de fungerar som behållare för data. Du kan deklarera och initiera variabler för att lagra olika typer av värden. Att förstå hur variabler fungerar är en viktig grundläggande kunskap inom programmering. Nu kan du använda denna kunskap för att skapa fantastiska program och ta din Java-programmering till nya höjder!

## Obligatorisk dad joke:

Varför var programmeringsläraren sur? <br>För att han hade glömt sina "klass"-rumsskyltar! 😄
