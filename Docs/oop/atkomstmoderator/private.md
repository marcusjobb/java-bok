---
title: Private
permalink: oop/atkomstmoderator/private
nav_order: 2
parent: Åtkomstmoderator
grand_parent: Objektorienterad programmering (OOP)
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
available: Java Java
codelanguage: C#
id: 0877ab58-f979-45b5-b917-1d358745b609
school: https://campus.molndal.se/yh
---

# Private

Privat är en åtkomstmodifikator som gör att en klassmedlem endast är tillgänglig för den klass där den är deklarerad.

<details open markdown="block">
<summary>
Innehållsförteckning
</summary>
{: .text-delta }
1. TOC
{:toc}
</details>

## Beskrivning

Vi kan använda privat för att göra en klassmedlem endast tillgänglig för den klass där den är deklarerad. Detta är användbart om vi vill att en klassmedlem endast ska vara tillgänglig för den klass där den är deklarerad och inte för någon annan klass.

## Exempel

Låt oss titta på ett exempel där vi använder privat för att göra en klassmedlem endast tillgänglig för den klass där den är deklarerad:

```java
public class Person {
private String name;
private int age;
}
```

I detta exempel har vi en klass som heter Person. Vi har också två egenskaper, name och age. Båda är privata, vilket innebär att de endast är tillgängliga för klassen Person. Även om name och age borde vara tillgängliga för alla klasser som länkas till denna, kommer de inte att vara tillgängliga för någon annan klass på grund av att de är privata.

Detta innebär att vi inte kan använda dem i klassen Person själv heller. Vi kan inte ens använda dem i en konstruktor i Person-klassen. Detta beror på att privata medlemmar endast är tillgängliga för den klass där de är deklarerade.

_LOL_

Jaja det är ju bara ett exempel.

Det får räcka som Dad-Joke för idag.