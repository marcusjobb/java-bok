---
title: Nästlade loopar
permalink: loop/nestedloop
nav_order: 7
parent: Loopar
grand_parent: Home
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
id: c8181196-ebaa-409e-a9b7-151b7e7138ec
school: https://campus.molndal.se/yh
---

# Nästlade loopar

Nästlade loopar är loopar som finns inuti en annan loop.

Detta innebär att den inre loopen upprepas lika många gånger som den yttre loopen bestämmer.

Om tänker dig att du ska säga "A B C" tre gånger.

Du säger då "ABC ABC ABC"

I kodform skulle detta bli

```java
char[] letters = {'A', 'B', 'C'};

for(int i = 0; i < 3; i++) {
    foreach(char letter in letters) {
        System.out.print(letter);
    }
    system.out.print(' ');
}
```

med resultatet

```text
ABC ABC ABC
```

De används när vi behöver upprepa en uppsättning instruktioner i flera dimensioner. Till exempel kan vi ha en loop som representerar rader och en inre loop som representerar kolumner för att bearbeta en matris. Här är ett exempel på en nästlad loop:

```java
for (int row = 1; row <= 3; row++) {
    for (int col = 1; col <= 3; col++) {
        System.out.println("Row: " + row + ", Column: " + col);
    }
}
```

med följande resultat:

```java
Row: 1, Column: 1
Row: 1, Column: 2
Row: 1, Column: 3
Row: 2, Column: 1
Row: 2, Column: 2
Row: 2, Column: 3
Row: 3, Column: 1
Row: 3, Column: 2
Row: 3, Column: 3
```

När nästlade loopar används är det viktigt att vara medveten om prestanda och hur många iterationer som utförs. Nästlade loopar kan öka tidskomplexiteten för ett program och leda till längre exekveringstider om de inte används effektivt.

Loopar är kraftfulla verktyg som hjälper till att automatisera upprepningsuppgifter och utföra operationer på en samling av objekt eller värden. Genom att välja rätt typ av loop och använda den på rätt sätt kan vi skapa mer effektiv och strukturerad kod.