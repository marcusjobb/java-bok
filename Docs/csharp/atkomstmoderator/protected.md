---
title: Protected
author: Marcus Medina
date: 2022-11-20 02:59
lang_supported: ["csharp","java"]
permalink: csharp/atkomstmoderator/protected
tags: ["atkomstmoderator","csharp","protected"]
categories: ["Atkomstmoderator","Åtkomstmoderator","Csharp"]
parent: Åtkomstmoderator
grandparent: CSharp
layout: default
isverified: true
nav_order: 4
---
# Protected

Protected är en åtkomstmoderator som gör att en klass, metod eller egenskap är tillgänglig för klassen den är deklarerad i och alla klasser som ärver från den.
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

När vi arbetar med Polymorfism kan det vara bra att göra en metod eller egenskap tillgänglig för alla klasser som ärver från en klass. Detta gör vi genom att använda protected. 
Protected är som private för alla klasser, utom den som ärver. Klasser kan inte ärva private medlemmar, så detta är det bästa alternativet. 

## Exempel

## Förklaring

I exemplet ovan är alla metoder i klassen person låsta för alla utom för ärvande klasser, detta gör att Student kan lägga till ett namn och skriva ut det, när inga andra klasser kan.
