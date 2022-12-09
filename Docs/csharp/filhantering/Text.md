---
title: Text
author: Marcus Medina
date: 2022-11-16 08:38
lang_supported: ["csharp","java"]
permalink: csharp/filhantering/text
tags: ["csharp","filhantering","text,filer"]
categories: ["Csharp","Filhantering","Text"]
parent: Filhantering
grandparent: CSharp
layout: default
isverified: true
nav_order: 2
---
# Textfiler

Textfiler är en vanlig filtyp som används för att lagra text. Det är ett textbaserat filformat som används för att lagra data rent allmänt.
<details open markdown="block">
  <summary>
    Innehållsförteckning
  </summary>
  {: .text-delta }

1. TOC
{:toc}

</details>

*Filen editerades senast 2022-12-09*
## Skapa en textfil

Hur man skapar en textfil i C#

## Läs in en textfil

```csharp
string contents = File.ReadAllText("Message.txt");
```

## Spara en lista i en textfil

```csharp
List<string> names = new List<string>();
names.Add("Picard");
names.Add("Janeway");
names.Add("Kirk");
names.Add("Sisko");
names.Add("Archer");
File.WriteAllLines("names.txt", names);
```

## Läs in en lista från en textfil

```csharp
List<string> names = File.ReadAllLines("names.txt").ToList();
```

## Kodförklaring

### File.WriteAllText

Skriver en sträng till en fil. Om filen inte finns skapas den. Om filen finns skrivs den över.

### File.ReadAllText

Läser in en fil och returnerar innehållet som en sträng.

### File.WriteAllLines

Skriver en lista till en fil. Varje element i listan hamnar på en egen rad.

### File.ReadAllLines

Läser in en fil och returnerar innehållet som en lista. Varje rad i filen hamnar på en egen plats i listan.

### List<string>

En vanlig generisk lista som innehåller strängar.
