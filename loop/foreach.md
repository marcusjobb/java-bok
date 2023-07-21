---
title: Foreach-loop
permalink: loop/foreach
nav_order: 5
parent: Loopar
grand_parent: Home
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
id: 52d15e72-c93d-4f82-8497-1d9551113064
school: https://campus.molndal.se/yh
---

# Foreach-loop

En foreach-loop används för att iterera över en samling av objekt eller värden och utföra en handling för varje element i samlingen. Syntaxen för en foreach-loop är följande:

```java
for (var element : samling) {
// Kod som ska utföras för varje element
}
```

Här är en förklaring av de olika delarna i en foreach-loop:

- `element`: En variabel som används för att representera varje element i samlingen när loopen itererar över den.
- `samling`: Den samling av objekt eller värden som ska itereras över, t.ex. en lista, ett fält eller en array.

Här är ett exempel på en foreach-loop som skriver ut varje element i en lista:

```java

List<Integer> numbers = new ArrayList<>(Arrays.asList(1, 2, 3, 4, 5));

for (int number : numbers) {
    System.out.println(number);
}
```

Resultatet av koden ovan kommer att vara:

```text
1
2
3
4
5
```

Foreach-loopar är särskilt användbara när du vill arbeta med varje element i en samling utan att behöva oroa dig för att hantera indexer och iterationsspecifikationer manuellt.

## Fördelar

Foreach-loopar har flera fördelar jämfört med andra typer av loopar:

- De är enkla att använda och förstå.
- De är säkrare än andra typer av loopar eftersom de inte kräver någon manuell hantering av indexer eller iterationsspecifikationer.
- De är mer läsbara än andra typer av loopar eftersom de inte kräver någon manuell hantering av indexer eller iterationsspecifikationer.

## Nackdelar

Foreach-loopar har också några nackdelar:

- De kan inte användas för att iterera över en samling baklänges.
- Om du har värden i samlingen kan du inte änra dem medan du itererar över dem. Du måste kopiera värdena till en annan samling först.