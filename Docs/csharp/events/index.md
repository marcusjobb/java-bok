---
title: Events
author: Marcus Medina
date: 2022-11-20 02:59
lang_supported: ["csharp","java"]
permalink: csharp/events
tags: ["csharp","events"]
categories: ["Csharp","Events"]
parent: CSharp
layout: default
has_children: true
isverified: true
nav_order: 12
---
# Events

Events är en funktion som anropas när något händer. Detta gör att vårt program kan reagera på händelser.
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

Som exempel kan vi ha hjälten i ett spel, vi vill slippa ha if-satser för om hjälten levlat upp eller dött. Istället kan vi använda oss av events. När hjälten dör så anropas en metod som gör något. När hjälten levlar upp så anropas en metod som gör något annat.

## Exempel

## Förklaring

I exemplet ovan skapar vi en klass som heter Hero. Denna klass har två events, LevelUp och Died. Dessa events anropas när hjälten levlar upp eller dör. 
Vi har även en property som heter XP. När vi sätter värdet på XP så kollar vi om XP är större eller lika med MaxXP. Om det är sant så anropas eventet LevelUp. Då triggas eventet LevelUp och alla metoder som lags in i eventlistan anropas.
Vi har även en property som heter HP. När vi sätter värdet på HP så kollar vi om HP är mindre eller lika med 0. Om det är sant så anropas eventet Died. 
I Main har vi skapat en instans av klassen Hero. Vi har även lagt till metoden OnLevelUp i eventlistan LevelUp och metoden OnDied i eventlistan Died.
När vi ökar XP med 100. Då triggas eventet LevelUp och metoden OnLevelUp anropas automagiskt. 
När vi sätter vi HP till 0 eller mindre. Då triggas eventet Died och metoden OnDied anropas  automagiskt.

## Referenser

* [Events](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/events/)
