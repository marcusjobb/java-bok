---
title: var
author: Marcus Ackre Medina
parent: Variabler
nav_order: 30
---
# var

Var är ett nyckelord som introducerades i Java 10. Det används för att deklarera lokala variabler med hjälp av typinferens. Det innebär att du inte längre behöver explicit ange datatypen för variabeln när du deklarerar den, eftersom Java kommer att "gissa" typen baserat på värdet du tilldelar till variabeln.

I början av utbildningen använder vi inte 'var', för att studenterna ska lära sig grundläggande typer, men efter OOP kursen är det fritt fram att använda 'var'.

## Introduktion

I Java, liksom i många andra programmeringsspråk, spelar variabler en central roll. En variabel är en plats i datorns minne där du kan lagra och manipulera data. Att förstå hur man använder variabler är en grundläggande färdighet för alla Java-utvecklare. I Detta avsnitt kommer vi utforska "var" - nyckelordet i Java som används för att deklarera variabler. Vi kommer diskutera varför "var" är användbart, ge flera exempel på hur man använder det, och väga dess fördelar och nackdelar.

## Vad är "var"?

"Var" är ett nyckelord som introducerades i Java 10. Det används för att deklarera lokala variabler med hjälp av typinferens. Det innebär att du inte längre behöver explicit ange datatypen för variabeln när du deklarerar den, eftersom Java kommer att "gissa" typen baserat på värdet du tilldelar till variabeln. Tänk på att den inte alltid gissar rätt.

```java
var cash = 2500;
```

När det gäller pengar använder man oftast double, men i detta fall kommer Java att gissa att det är en int för att vi angett ett heltal, för att hjälpa Java på traven får vi då skriva:

```java
var cash = 2500.0;
```

## Varför använda "var"?

Användningen av "var" kan göra koden mer kompakt och läsbar. Det är särskilt användbart när datatypen är uppenbar från tilldelat värde, vilket minskar upprepningen av kod. Dessutom möjliggör det enklare hantering av komplexa datatyper utan att behöva specificera dem varje gång.

I ärlighetens namn, programmerare är lata, det är ett faktum. Slipper man krångla med att skriva typer så är det väl klart man gör det ;)

## Exempel på "var" i Java

Låt oss titta på några exempel där vi kan använda "var" för att deklarera variabler:

### Exempel 1: Enkelt värde

```java
var age = 25;
```

Här har vi deklarerat variabeln "age" och eftersom den tilldelas värdet 25, kommer Java automatiskt att inferera att "age" är av typen int.

### Exempel 2: Sträng

```java
var name = "Alice"; // Who the f*ck is Alice?
```

Variabeln "name" tilldelas strängen "Alice", och på grund av detta vet Java att "name" är av typen String.

### Exempel 3: Sammansatt datatyp

```java
var point = new Point(10, 20);
```

I detta exempel skapar vi en instans av klassen Point med koordinaterna (10, 20). Java förstår automatiskt att "point" är av typen Point.

Javas variant av var är inte som javascriptens variant, där var är en global variabel, i Java är det en lokal variabel.

## Fördelar med "var"

- **Kompakt kod**: Genom att använda "var" kan du minska onödigt upprepande av datatyper, vilket gör koden kortare och mer läsbar.
- **Flexibilitet**: "Var" gör det enkelt att hantera komplexa datatyper utan att explicit specificera dem, vilket ger ökad flexibilitet i kodningen.
- **Mindre beroende av datatyper**: Genom att använda typinferens kan du göra ändringar i kodens datatyper utan att ändra variabeldeklarationerna.

## Begränsningar med "var"

- **Minskad läsbarhet**: I vissa fall kan användningen av "var" göra koden mindre läsbar, särskilt när variabelns typ inte är tydlig från det tilldelade värdet.
- **Potentiell överanvändning**: Det är viktigt att använda "var" på ett balanserat sätt. Överanvändning av typinferens kan göra koden svårare att underhålla och förstå.

## Användningsområden för "var"

- Använd "var" när variabelns typ är tydlig från tilldelat värde för att göra koden mer koncis.
- Använd "var" när du arbetar med långa och komplexa datatyper för att förbättra kodens läsbarhet.
- Var försiktig med att använda "var" i situationer där variabelns typ inte är uppenbar, eftersom det kan minska koden läsbarhet.

## Slutsats

Variabler är en nyckelkomponent i Java-programmering. Med introduktionen av "var" i Java 10 har vi fått möjlighet att använda typinferens för att deklarera variabler på ett mer kompakt och flexibelt sätt. Genom att använda "var" på ett klokt sätt kan du skriva effektivare och mer läsbar kod. Kom ihåg att använda det med måtta och tänka på läsbarheten hos din kod. Nu är det dags att utforska Java-världen ytterligare och fortsätta att skapa fantastiska program!

## Obligatorisk dad joke

Varför delar Java-programmerare ofta sina koder?

Sharing is caring!

Lycka till med din Java-kodning och glöm inte att ha kul på vägen!
