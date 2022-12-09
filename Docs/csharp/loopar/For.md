---
title: For
author: Marcus Medina
date: 2022-11-16 08:38
lang_supported: ["csharp","java"]
permalink: csharp/loopar/for
tags: ["csharp","for","loopar"]
categories: ["Csharp","For","Loopar"]
parent: Loopar
layout: default
isverified: true
nav_order: 3
---
# For

Det tre olika typer av for-loopar i C#. Först en vanlig for-loop, sedan en foreach-loop och till sist en inline for-each-loop.
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

En for-loop är en loop som körs så länge som villkoret är sant. Det är den vanligaste typen av loopar i C#. Den är enkel, lätthanterlig och relativt okomplicerad. Vilket för att den är snabb och effektiv.

### Exempel

For loop som räknar från 1 till 10

For loop som räknar från 10 till 0

```csharp
for (int i = 10; i >= 0; i--)
{
    Console.WriteLine(i);
}
```

## Foreach

Foreach är en loop som används för att iterera över en samling. Det är enkelt att använda och lättläst. Den är dock inte lika effektiv som en vanlig for-loop.
Ska man bara iterera listan är det enklare med en foreach, men ska man bearbeta informationen kan foreach bli lite krångligt, såvida inte man iterar en lista med objekt.
Loopen kan inte köras baklänges utan att påverka listan.

### Exempel

```csharp
string[] names = new string[] { "Will", "Mike", "Lucas", "Dustin", "Eleven", "Max", "Steve", "Joyce", "Jonathan", "Nancy" };
foreach (string name in names)
{
    Console.WriteLine(name);
}
// Skriv ut listan baklänges
Array.Reverse(names);
foreach (string name in names)
{
    Console.WriteLine(name);
}
```

## Inline Foreach

Inline foreach fungerar bara med Listor tyvärr. 

```csharp
string[] names = new string[] { "Will", "Mike", "Lucas", "Dustin", "Eleven", "Max", "Steve", "Joyce", "Jonathan", "Nancy" };
names.ToList().ForEach(name => Console.WriteLine(name));
// Skriv ut listan baklänges
names.ToList().Reverse().ToList().ForEach(name => Console.WriteLine(name));
```
