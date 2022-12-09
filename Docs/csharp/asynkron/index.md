---
title: Asynkron
author: Marcus Medina
date: 2022-11-28 10:23
lang_supported: ["csharp","java"]
permalink: csharp/asynkron
tags: ["asynkron","csharp"]
categories: ["Asynkron","Csharp"]
parent: CSharp
layout: default
has_children: true
isverified: true
nav_order: 15
---
# Asynkron

Asynkrona anrop!
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

Asynkrona anrop är ett sätt att göra anrop till andra metoder utan att vänta på att de ska slutföras. Detta gör att vi kan fortsätta med andra saker samtidigt som vi väntar på att anropet ska slutföras. 

### Vad är det bra för?

Asynkrona anrop är bra om vi vill göra flera anrop samtidigt, eller om vi vill göra anrop som tar lång tid utan att blockera hela programmet.

### Hur fungerar det?

Asynkrona anrop fungerar genom att vi skapar en ny tråd som körs parallellt med den tråd som kör koden. Detta gör att vi kan fortsätta med andra saker samtidigt som vi väntar på att anropet ska slutföras.

#### Filmtips

En film som vissar hur asynkrona anrop fungerar är filmen [Next](https://www.imdb.com/title/tt0435705/) med Nicholas Cage. 

*(Spoiler alert)* Mer specifik [den här scenen](https://www.youtube.com/watch?v=lufECeWtN34) där han söker igenom hela byggnaden på en gång, genom att dela upp sig i olika paralella versioner av sig själv. 
{: .warning }
