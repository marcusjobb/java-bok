---
title: While
author: Marcus Medina
date: 2022-11-16 08:38
lang_supported: ["csharp","java"]
permalink: csharp/loopar/while
tags: ["csharp","loopar","while"]
categories: ["Csharp","Loopar","While"]
parent: Loopar
grandparent: CSharp
layout: default
isverified: true
nav_order: 1
---
# While

En While loop körs så länge som villkoret är sant.
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

While loopar är enkla och effektiva. De är snabba och lättlästa. En while upprepar så länge villkoret är sann, om villkoret är falsk redan från början kommer loopen aldrig att köras.

## Exempel

och baklänges

```csharp
int i = 10;
while (i>0)
{
    Console.WriteLine(i);
    i--;
}
```

och en klassisk evig loop

```csharp
while (true)
{
    Console.WriteLine("Hello World");
}
```
