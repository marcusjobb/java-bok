---
title: Json
author: Marcus Medina
date: 2022-11-16 08:38
lang_supported: ["csharp","java"]
permalink: csharp/filhantering/json
tags: ["csharp","filhantering","json,filer"]
categories: ["Csharp","Filhantering","Json"]
parent: Filhantering
grandparent: CSharp
layout: default
isverified: true
nav_order: 3
---
# Json

JSON ( JavaScript Object Notation. ) är ett filformat som används för att lagra data. Det är ett textbaserat format som är lätt att läsa och skriva. Det är ett populärt format för att lagra data i webbapplikationer.
<details open markdown="block">
  <summary>
    Innehållsförteckning
  </summary>
  {: .text-delta }

1. TOC
{:toc}

</details>

*Filen editerades senast 2022-12-09*
## Beskrivning

JSON liknar XML men är enklare att läsa och skriva. Den har inte samma strukturella krav som XML och den är lättare att anpassa.

## Spara en lista i Json

## Läs in en lista från en Json fil

```csharp
// Läs in filen
string json = File.ReadAllText("people.json");
// Deserialisera JSON till en lista
List<Person> people = JsonConvert.DeserializeObject<List<Person>>(json);
```

### Serialisera

Serialisering är processen att konvertera ett objekt till en sträng. Detta är en process som används för att spara ett objekt till en fil eller överföra det över ett nätverk.

### Deserialisera

Deserialisering är processen att konvertera en sträng till ett objekt. Detta är en process som används för att läsa ett objekt från en fil eller överföra det över ett nätverk.
