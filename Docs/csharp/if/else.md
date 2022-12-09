---
title: else
author: Marcus Medina
date: 2022-11-20 02:59
lang_supported: ["csharp","java"]
permalink: csharp/if/else
tags: ["csharp","else","if"]
categories: ["Csharp","If"]
parent: If
layout: default
isverified: true
nav_order: 2
---
# else

else är kommandot vi använder för att skriva kod som ska köras om if är falskt. Om if är sant så kommer C-Sharp att hoppa över all kod som står efter else.
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

Else ger oss möjligheten att förse användaren med två alternativa svar. Om svaret på frågan är sann kommer C-Sharp att skriva ut det första svaret. Om svaret är falskt så kommer C-Sharp att skriva ut det andra svaret.

## Exempel

Här väljer C-Sharps att skriva ut "Du är myndig" eftersom svaret på frågan är sant. Om vi ändrar variabeln age till 17 så kommer C-Sharp att skriva ut "Du är inte myndig" eftersom svaret på frågan är falskt.
Man kan säga att vi låter programmet välja en väg. Om svaret på frågan är sant så kommer C-Sharp att välja den första vägen. Om svaret är falskt så kommer C-Sharp att välja den andra vägen.
Viktigt är att kommandot else alltid måste följas av ett if. Det går inte att skriva else utanför ett if.
Else kommer alltid i slutet en if-sats. Det går inte att skriva else innanför ett if.
