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
mermaid: true
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

## Getters och setters?

Varför har man Getters och Setters istället för publika variabler?

| Namn | Fördel | Nackdel |
| --- | --- | --- |
| Getter | Du kan göra mer än bara returnera en variabel. Du kan till exempel validera värdet innan du returnerar det. Du kan returnera resultat av data i din klass istället för en specifik variabel. | Du måste skriva mer kod. |
| Setter | Du kan göra mer än bara tilldela en variabel. Du kan till exempel validera värdet innan du tilldelar det. Om värdet inte är bra för din klass kan kasta ett felmeddelande eller bara vägra att spara värdet | Du måste skriva mer kod. |
| Public | Du behöver inte skriva mer kod. | Du kan inte göra mer än att tilldela eller returnera en variabel. |

## Exempel

```java

// Setter som inte accepterar negativa tal
public void setAge(int age) {
    if (age < 0) {
        throw new IllegalArgumentException("Age cannot be negative");
    }
    this.age = age;
}

// Getter som returnerar åldern på en person baserat på en annan variabel (Date)
public int getAge(Date date) {
    return date.getYear() - this.birthDate.getYear();
}
```

## Sammanfattning

Public är en åtkomstmodifikator som gör att en klass, metod eller egenskap är tillgänglig för alla klasser. Detta är bra om vi vill dela kod mellan flera klasser i olika projekt. Att dela metoder till externa klasser är ett bra sätt för att få klasser att samarbeta.