---
title: Protected
permalink: oop/atkomstmoderator/protected
nav_order: 4
parent: Åtkomstmoderator
grand_parent: Home
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
available: Java Java
codelanguage: C#
id: 91c193e4-c32c-4d30-9925-48c5f654a67f
school: https://campus.molndal.se/yh
---

# Protected

Protected är en åtkomstmodifierare som gör att en klass, metod eller egenskap är tillgänglig för klassen den är deklarerad i och alla klasser som ärver från den.

<details open markdown="block">
<summary>
Innehållsförteckning
</summary>
{: .text-delta }
1. TOC
{:toc}
</details>

## Beskrivning

När vi arbetar med polymorfism kan det vara bra att göra en metod eller egenskap tillgänglig för alla klasser som ärver från en klass. Detta gör vi genom att använda protected.
Protected är som private för alla klasser, utom den som ärver. Klasser kan inte ärva privata medlemmar, så detta är det bästa alternativet.

## Exempel

```java
// Klassen Person ärver inte från någon annan klass
// Eller ja... den ärver från Objekt, det gör alla klasser :) 
public class Person {
    protected String name;
}

// Klassen Student ärver från Person och kan därför använda "name"
public class Student extends Person {
    public Student(String name) {
        this.name = name;
    }

// Klassen Student kan nu använda "name" och skriva ut det
public void printInfo() {
    System.out.println("Student Info: " + name);
}
```

## Förklaring

I exemplet ovan är "name" propertyn i klassen Person skyddad för alla klasser förutom de som ärver från den, vilket gör att klassen Student kan lägga till ett namn och skriva ut det, medan inga andra klasser kan göra det.

## Obligatorisk Dad-Joke

Varför var det nyckelordet "protected" så nervöst hela tiden?

För att det alltid ville hålla sitt privata liv... väl, "protected"! 😄