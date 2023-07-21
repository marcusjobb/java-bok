---
title: Rekursiva loopar
permalink: loop/recursion
nav_order: 13
parent: Loopar
grand_parent: Home
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
id: 96fd69ad-f794-4e2c-bc52-1f6d1bed02f2
school: https://campus.molndal.se/yh
---

# Rekursiva loopar

Rekursion är en teknik där en funktion kallar sig själv för att utföra en uppgift. Detta kan vara användbart när du har en uppgift som kan delas upp i mindre liknande deluppgifter. Ett vanligt exempel på rekursion är beräkningen av det n:te Fibonacci-talet. Här är en rekursiv funktion som beräknar Fibonacci-talet:

```java
int Fibonacci(int n) {
    if (n <= 1)
        return n;
    else
        return Fibonacci(n - 1) + Fibonacci(n - 2);
```

Du kan sedan anropa funktionen med önskat värde för att få det motsvarande Fibonacci-talet:

```java
int result = Fibonacci(6);
System.out.println(result); // Resultatet blir 8
```

Bästa sättet att förstå det är att köra det i debugläge och stega ett steg i taget. Skriv om koden såhär:

```java
int Fibonacci(int n) {
    if (n <= 1)
        return n;
    else
        return
            Fibonacci(n - 1) +
            Fibonacci(n - 2);
}
```

Vi försöker förklara flödet

1. Först anropas metoden med värdet 6.
2. Eftersom 6 inte är mindre än eller lika med 1, går vi vidare till else-blocket.
3. Metoden anropar sig själv två gånger med de två föregående talen i Fibonacci-sekvensen, det vill säga `Fibonacci(6 - 1)` och `Fibonacci(6 - 2)`.
4. Nu fortsätter vi att evaluera dessa anrop separat.
5. Första anropet `Fibonacci(6 - 1)` utvärderas till `Fibonacci(5)`.
6. För att beräkna `Fibonacci(5)` måste vi fortsätta att anropa metoden med mindre värden tills vi når basfallet.
7. Detta resulterar i en serie anrop `Fibonacci(4)`, `Fibonacci(3)`, `Fibonacci(2)`, och `Fibonacci(1)`.
8. När vi når basfallet `Fibonacci(1)` returneras värdet 1.
9. Därefter fortsätter vi att evaluera anropen på vägen tillbaka. `Fibonacci(2)` returneras också med värdet 1.
10. Nu kan vi beräkna `Fibonacci(3)` genom att addera `Fibonacci(2)` och `Fibonacci(1)`, vilket ger 2.
11. Vi fortsätter att evaluera anropen och beräkna värdena för `Fibonacci(4)` och `Fibonacci(5)`.
12. Slutligen, när vi har beräknat `Fibonacci(6)` genom att addera `Fibonacci(5)` och `Fibonacci(4)`, returneras värdet 8.

Så resultatet av att anropa `Fibonacci(6)` är 8 enligt definitionen av Fibonacci-sekvensen.

Det är värt att notera att den här implementationen är rekursiv och kan vara ineffektiv för stora värden på `n` på grund av att den utför många redundanta beräkningar. Det finns alternativa iterativa eller memoiserade implementationer som kan förbättra prestandan för Fibonacci-sekvensen.

Sätt en breakpoint på raden `return n;` och kör programmet. Stega igenom koden och se vad som händer.

## Rekursion i Java

Rekursion är en cool teknik som används inom programmering för att lösa problem genom att bryta ner dem i mindre delproblem. Det innebär att en funktion kan anropa sig själv för att lösa ett problem. Det är dock viktigt att ha en stoppvillkor för att undvika oändlig rekursion.
Här är ett exempel på rekursion i Java:

```java
public class RekursionExempel {
    public static void main(String[] args) {

        int resultat = summera(5);
        System.out.println("Summan är: " + resultat);
    }

    public static int summera(int n) {
        if (n == 1) {
            return 1;
        } else {
            return n + summera(n - 1);
    }
}
```

I det här exemplet använder vi en rekursiv funktion `summera` för att beräkna summan av alla heltal från 1 till det givna talet `n`. Funktionen har en stoppvillkor som säger att om `n` är lika med 1, returnera 1. Annars anropar funktionen sig själv med `n-1` och lägger till `n` i resultatet.
När vi kör programmet kommer det att skriva ut summan av alla heltal från 1 till 5, vilket är 15.

Rekursion kan vara svårt att förstå i början, men med övning och erfarenhet kan du behärska denna kraftfulla teknik. Fortsätt att utforska och experimentera med rekursion för att utveckla dina programmeringskunskaper!

Om du vill ha mer inspiration kan du titta på några av följande filmer:

- [Source code](https://www.imdb.com/title/tt0945513/)
- [Happy Death day](https://www.imdb.com/title/tt5308322/)
- [Happy Death day 2U](https://www.imdb.com/title/tt8155288/)
- [Groundhog day](https://www.imdb.com/title/tt0107048/)
- [Edge of tomorrow](https://www.imdb.com/title/tt1631867/)

## Obligatorisk dad-joke

Varför gillar programmerare att använda rekursion i skämt?

För att förstå rekursion i skämt måste du först förstå rekursion i skämt.