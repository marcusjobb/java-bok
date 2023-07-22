---
title: Dictionary (Hashmap)
permalink: datastructures/dictionary
nav_order: 5
parent: Datastrukturer
grand_parent: Home
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
available: Java
codelanguage: Java
enhance: false
id: e55062fc-1bb4-4444-9652-67d668e6bb6c
school: https://campus.molndal.se/yh
---

# Dictionary (Hashmap)

<details open markdown="block">
  <summary>
    Innehållsförteckning
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

## Beskrivning

En Dictionary är en datastruktur som tillåter oss att lagra och hämta värden baserat på nycklar. Den fungerar på ett liknande sätt som en telefonbok där vi kan slå upp ett namn (nyckel) för att få fram ett telefonnummer (värde). Dictionary är en kraftfull datastruktur inom programmering som erbjuder snabb åtkomst och effektiva sökningar. I java finns det flera olika klasser som kan användas för att implementera en Dictionary, t.ex. `HashMap`, `TreeMap` och `LinkedHashMap`. Vi ska använda Hashmap.

## Exempel

Här är ett exempel på hur man kan använda en Dictionary i Java:

```java
import java.util.HashMap;
import java.util.Map;

public class Main {
    public static void main(String[] args) {
        // Skapa en Hashmap för att lagra hjältarnas namn och deras hemvärld
        Map<String, String> heroes = new HashMap<>();

        // Lägg till värden i Hashmap
        heroes.put("Superman", "DC");
        heroes.put("Spider-Man", "Marvel");
        heroes.put("Batman", "DC");

        // Hämta hemvärlden för en specifik hjälte
        String supermanHomeWorld = heroes.get("Superman");
        System.out.println("Hemvärld för Superman: " + supermanHomeWorld);

        // Uppdatera hemvärlden för en hjälte
        heroes.put("Spider-Man", "DC");

        // Kontrollera om en hjälte finns i Hashmap
        if (heroes.containsKey("Batman")) {
            System.out.println("Batman finns i Hashmap.");
        }

        // Ta bort en hjälte från Hashmap
        heroes.remove("Superman");

        // Loopa genom alla hjältarnas namn och hemvärldar i Hashmap
        for (Map.Entry<String, String> entry : heroes.entrySet()) {
            String heroName = entry.getKey();
            String homeWorld = entry.getValue();
            System.out.println("Hjälte: " + heroName + ", Hemvärld: " + homeWorld);
        }
    }
}
```

I det här exemplet används klassen `HashMap` från `java.util`-paketet för att implementera en Hashmap i Java. Vi använder `put`-metoden för att lägga till värden i Hashmap och `get`-metoden för att hämta värdet för en specifik nyckel. Vi kan också använda `containsKey`-metoden för att kontrollera om en nyckel finns i Hashmap och `remove`-metoden för att ta bort en nyckel och dess tillhörande värde. Genom att använda en `for-each`-loop och `entrySet`-metoden kan vi loopa genom alla nycklar och värden i Hashmap och utföra önskade operationer.

Detta är bara ett grundläggande exempel på hur man kan använda en Hashmap i Java. Det finns mycket mer att utforska och lära sig om denna kraftfulla datastruktur.

## Slutsats

En Hashmap är en värdefull datastruktur som tillåter oss att lagra och hämta värden baserat på nycklar. Den erbjuder snabb åtkomst och effektiva sökningar, vilket gör den till en populär datastruktur inom programmering. Genom att använda en Hashmap kan vi effektivt hantera och organisera data i våra program.

För att lära dig mer om Hashmap och hur den kan användas i Java-programmering, rekommenderas att du utforskar dokumentationen och exempelkod på Oracles officiella webbplats eller andra resurser som erbjuder fördjupad information om ämnet.

## TL;DR

En Hashmap är en datastruktur som låter oss lagra och hämta värden baserat på nycklar. Den ger snabb åtkomst och effektiva sökningar, vilket gör den till ett kraftfullt verktyg inom programmering.

Obligatorisk dad-joke: Varför älskar programmerare att använda dictionaries? För att de alltid vill ha en "key" till framgång!

```

Jag har rättat formateringen och justerat några delar av din artikel. Var noga med att dubbelkolla innehållet och ändra tillbaka eventuella delar som inte stämmer överens med din ursprungliga avsikt.
```
