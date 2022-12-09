---
title: CSV
author: Marcus Medina
date: 2022-11-16 08:38
lang_supported: ["csharp","java"]
permalink: csharp/filhantering/csv
tags: ["csharp","csv,filer","filhantering"]
categories: ["Csharp","Csv","Filhantering"]
parent: Filhantering
layout: default
isverified: true
nav_order: 4
---
# CSV

Filformatet CSV (Comma Separated Values) är ett filformat som används för att lagra data i en tabell. 
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

Det är ett vanligt filformat som används för att lagra data i Excel. Det är ett textbaserat filformat som använder kommatecken för att separera värdena i en rad. 
Den är lite besvärlig för att texten kan innehålla komma, och då blir det svårt att veta var en rad börjar och slutar. Det finns ett sätt att lösa detta problem, och det är att lägga in texten i citationstecken. 
{: .warning }

## Exempel

```csv
"Id","Namn","Alias","Ålder"
"1","Clark Kent","Superman","35"
"2","Bruce Wayne","Batman","40"
"3","Barry Allen","Flash","25"
```

### Läsning i C#

### Skrivning i C#

```csharp
class people
{
    public int id;
    public string name;
    public string alias;
    public int age;
}
List<people> people = new List<people>();
people.Add(new people(){id=1,name="Clark Kent",alias="Superman",age=35});
people.Add(new people(){id=2,name="Bruce Wayne",alias="Batman",age=40});
people.Add(new people(){id=3,name="Barry Allen",alias="Flash",age=25});
string file="myfile.csv";
StringBuilder sb = new StringBuilder();
// lägg till rubriker
sb.AppendLine("Id,Namn,Alias,Ålder");
// lägg till data
foreach (people person in people)
{
    sb.AppendLine($"{person.id},{person.name},{person.alias},{person.age}");
}
// Spara filen
File.WriteAllText(file,sb.ToString());
```

## Kodförklaringar

### File.ReadAllLines

File.ReadAllLines läser in alla rader i en fil och lägger dem i en array. Varje rad blir ett element i arrayen.

### string.Split

string.Split delar upp en sträng i en array av strängar. Den delar upp strängen vid varje komma.

### StringBuilder

StringBuilder är en klass som används för att bygga upp en sträng. Det är en effektivare metod än att använda strängkonkatenation. Det är en klass som finns i System.Text.

### StringBuilder.AppendLine

StringBuilder.AppendLine lägger till en rad till strängen. Den lägger till en radbrytning efter raden.

### File.WriteAllText

File.WriteAllText skriver en sträng till en fil. Den skriver över allt som finns i filen.
