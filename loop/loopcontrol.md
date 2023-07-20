---
title: Loop kontroller
permalink: loop/loopcontrol
nav_order: 18
parent: Loopar
grand_parent: Home
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
id: 0cabf286-630d-4094-a0ca-3fd8250162b2
school: https://campus.molndal.se/yh
---

# Loop kontroller

För att få mer kontroll på loopar kan vi använda oss av loop kontroller. Dessa är `break`, `continue` och `return`.

## Break

`break` används för att avbryta en loop. Detta kan vara användbart om vi vill avbryta en loop innan den är klar.

```java
int max = 5;
for(int i = 0; i < 10; i++) {
    if(i >= max) {
        break;
    }
    System.out.println(i);
}
```

Resultatet av koden ovan kommer att vara:

```text
0
1
2
3
4
```

Loopen är en loop som ska gå upp till tio, men vi styr den med `break` så att den bara går upp till fem som vi angett som maxvärde.

## Continue

`continue` används för att hoppa över en iteration i en loop. Detta kan vara användbart om vi vill hoppa över en iteration i en loop.

```java
int mod=3;
for(int i = 0; i < 10; i++) {
    if(i % mod == 0) {
        continue;
    }
    System.out.println(i);
}
```

Resultatet av koden ovan kommer att vara:

```text
1
2
4
5
7
8
```

Med mod variabeln kan vi styra hur många iterationer som ska hoppas över. I exemplet ovan hoppar vi över var tredje iteration. Continue används ofta tillsammans med en if-sats. Den gör att loopen hoppar över allt följande kod i loopen och går direkt till nästa iteration.

## Return

`return` används för att avsluta en metod. Detta kan vara användbart om vi vill avsluta en metod innan den är klar.

```java
public static void main(String[] args) {
    int max = 5;
    for(int i = 0; i < 10; i++) {
        if(i >= max) {
            return;
        }
        System.out.println(i);
    }
}
```

Resultatet av koden ovan kommer att vara:

```text
0
1
2
3
4
```

Hela metoden avslutas när vi når `return` och vi kommer inte till `System.out.println(i);` som ligger efter.

## yield

`yield` används för att avsluta en iterator. Detta kan vara användbart om vi vill avsluta en iterator innan den är klar.

```java
public static void main(String[] args) {
    int max = 5;
    for(int i = 0; i < 10; i++) {
        if(i >= max) {
            yield;
        }
        System.out.println(i);
    }
}
```

Resultatet av koden ovan kommer att vara:

```text
0
1
2
3
4
```

Hela iteratorn avslutas när vi når `yield` och vi kommer inte till `System.out.println(i);` som ligger efter. Vad är då skillnaden mellan detta och break? Jo, break avslutar bara loopen, medan yield avslutar hela iteratorn. Detta är användbart om vi vill avsluta en iterator innan den är klar.

Vi kollar på ett bättre exempel:

```java
// kalla på en metod som yieldar

public static void main(String[] args) {
    System.out.println("Start");
    System.out.println(GetNumber());
    System.out.println(GetNumber());
    System.out.println(GetNumber());
    System.out.println(GetNumber());
    System.out.println("End");
}

public static int GetNumber() {
    for(int i = 0; i < 10; i++) {
        if(i >= 5) {
            yield;
        }
        System.out.println(i);
    }
    return 0;
}
```

Resultatet av koden ovan kommer att vara:

```text
Start
0
1
2
3
4
End
```

Vad händer om vi byter ut yield mot break?

```java
// kalla på en metod som yieldar

public static void main(String[] args) {
    System.out.println("Start");
    System.out.println(GetNumber());
    System.out.println(GetNumber());
    System.out.println("End");
}

public static int GetNumber() {
    for(int i = 0; i < 10; i++) {
        if(i >= 5) {
            break;
        }
        System.out.println(i);
    }
    return 0;
}
```

Resultatet av koden ovan kommer att vara:

```text
Start
0
1
2
3
4
0
1
2
3
4
End
```

Yield ger oss alltså en möjlighet att avsluta en iterator innan den är klar. Detta är användbart vi vill anropa en metod men bara få en del av resultatet åt gången. Visst är det coolt.

Tänk dig att du har en lista med namn men vill bara arbeta med en åt gången utan att behöva kapsla in din kod i en jätteloop. Då kan du använda yield.

Det är ett sätt att slippa ifrån loopar, vilket man gärna gör i funktionell programmering.