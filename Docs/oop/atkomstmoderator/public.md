---
title: Public
permalink: oop/atkomstmoderator/public
nav_order: 6
parent: Åtkomstmoderator
grand_parent: Home
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
available: Java Java
codelanguage: C#
id: d2bb99cc-1fe2-44cf-a659-e5803b1a1d72
school: https://campus.molndal.se/yh
---

# Public
Public is an access modifier that allows a class, method, or property to be accessible to all classes.

<details open markdown="block">
<summary>
Table of Contents
</summary>
{: .text-delta }
1. TOC
{:toc}
</details>

## Beskrivning

Med public kan vi göra en klass, metod eller egenskap tillgänglig för alla klasser. Detta är bra om vi vill dela kod mellan flera klasser i olika projekt.

## Exempel

```java
public class Person {
public String name;
public int age;
}

```

## Förklaring

I exemplet ovan är klassen Person tillgänglig för alla klasser i alla projekt. Detta gör att vi kan skapa en ny instans av Person i en annan klass och lägga till ett namn och ålder.