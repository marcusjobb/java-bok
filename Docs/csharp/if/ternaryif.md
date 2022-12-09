---
title: Ternary if
author: Marcus Medina
date: 2022-11-20 02:59
lang_supported: ["csharp","java"]
permalink: csharp/if/ternaryif
tags: ["csharp","if","ternary,if"]
categories: ["Csharp","If"]
parent: If
grandparent: CSharp
layout: default
isverified: true
nav_order: 4
---
# Ternary if

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

## Exempel

Exemplet nedan lägger texten "Du är myndig" i variabeln "result" om variabeln "age" är större eller lika med 18. Annars läggs texten "Du är inte myndig" i variabeln "result". Det är en if-sats men det är skriven som något kryptiskt.
Först skriver man villkoret, sedan frågetecknet som visar att det är en ternary if. Därefter det som ska hända om villkoret är sant, sedan kolon,och slugliten det som hända om villkoret är falskt.

## Exempel 2

I exemplet nedan skickar vi in en boolean till vår result kontroll, då behöver vi inte göra jämförelser för att boolean är redan sant eller falskt.

```csharp
bool catIsCute = true;
string result = catIsCute ? "Katten är söt <3" : "Katten är inte söt :(";
Console.WriteLine(result);
```
