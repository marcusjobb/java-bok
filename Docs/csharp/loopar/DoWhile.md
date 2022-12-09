---
title: Do While
author: Marcus Medina
date: 2022-11-16 08:38
lang_supported: ["csharp","java"]
permalink: csharp/loopar/dowhile
tags: ["csharp","do,while","loopar"]
categories: ["Csharp","Do While","Loopar"]
parent: Loopar
layout: default
isverified: true
nav_order: 2
---
# Do While

Do While är en loop som körs minst en gång. Den körs sedan så länge som villkoret är sant.
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

Do while är som en While fast den kontrollerar körningsvillkoret sist, en vanlig while kontrollerar den först. Detta gör att den alltid körs minst en gång.

## Exempel

```cs
int i = 0;
do
{
    Console.WriteLine(i);
    i++;
} while (i < 10);
```
