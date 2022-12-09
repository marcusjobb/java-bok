---
title: Static
author: Marcus Medina
date: 2022-11-20 02:59
lang_supported: ["csharp","java"]
permalink: csharp/atkomstmoderator/static
tags: ["atkomstmoderator","csharp","static"]
categories: ["Atkomstmoderator","Åtkomstmoderator","Csharp"]
parent: Åtkomstmoderator
grandparent: CSharp
layout: default
isverified: true
nav_order: 5
---
# Static

Static är inte en åtkomstmoderator utan en modifierare. Det gör att en klass, metod eller egenskap är tillgänglig för alla klasser i samma projekt.
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

Static klasser instansieras vid programstart och det finns bara en instans tillgänglig under körningen. Detta är bra om vi vill dela data mellan flera klasser i samma projekt. Detta är också bra om vi vill ha en klass som bara innehåller statiska metoder och egenskaper.

## Exempel
