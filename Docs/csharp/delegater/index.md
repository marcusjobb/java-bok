---
title: Delegater
author: Marcus Medina
date: 2022-11-20 02:59
lang_supported: ["csharp","java"]
permalink: csharp/delegater
tags: ["csharp","delegater"]
categories: ["Csharp","Delegater"]
parent: CSharp
layout: default
has_children: true
isverified: true
nav_order: 11
---
# Delegater

Delegate är en referens till en metod. Detta gör att vi kan skicka metoder som parametrar till andra metoder. 
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

I andra språk, som Javascript är detta ett vanligt förekommande fenomen. 

## Exempel

## Förklaring

I exemplet ovan skapar vi en delegat som heter MyDelegate. Denna delegat tar en sträng som parameter och returnerar inget. 
Vi skapar sedan en instans av MyDelegate och skickar med metoden HelloWorld som parameter. Vi kan sedan anropa metoden genom att skriva myDelegate("Hello World");. Detta kommer att skriva ut "Hello World" i konsolen.
Detta gör att vi under programkörning välja vilken metod som ska anropas, genom att skicka med en annan metod som parameter. Därmed blir vår kod mer flexibel och vi kan skicka med metoder som parametrar till andra metoder.
Detta kan även användas för att skapa Callbacks. Då anropar vi en metod med en annan metod som parameter. När den första metoden är klar så anropas den andra metoden.

## Referenser

- [Delegates](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/delegates/)
- [Delegates W3Schools](https://www.w3schools.com/cs/cs_delegates.asp)
- [Jeremybytes Deletagtes](https://www.youtube.com/watch?v=v6Zb0nD7PHA&list=PLdbkZkVDyKZVvizO94tJNmTfRzXWGDFZ3)
