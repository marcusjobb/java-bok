---
title: Do While
permalink: loop/dowhile
nav_order: 11
parent: Loopar
grand_parent: Home
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
id: 559deb59-12ae-4343-9c3f-d9328063729c
school: https://campus.molndal.se/yh
---

# Do While

Do While är en loop som körs minst en gång. Den körs sedan så länge som villkoret är sant.

<details open markdown="block">
<summary>
Innehållsförteckning
</summary>
{: .text-delta }
1. TOC
{:toc}
</details>

## Beskrivning

Do While är en loopstruktur i Java som liknar While-loopen. Skillnaden är att i en Do While-loop kontrolleras villkoret efter varje iteration, vilket innebär att loopen alltid körs minst en gång. Detta är användbart när du vill att en viss kod ska utföras minst en gång innan villkoret kontrolleras.

## Exempel

För att förstå hur en Do While-loop fungerar, låt oss titta på följande kodexempel:

```java
int i = 0;
do {
    System.out.println(i);
    i++;
} while (i < 10);
```

I detta exempel deklarerar vi en variabel `i` och tilldelar den värdet 0. Sedan har vi en Do While-loop som kontrollerar om `i` är mindre än 10. Inuti loopen skriver den ut värdet av `i` och ökar sedan värdet med 1. Loopen fortsätter att köras så länge som `i` är mindre än 10.

Med följande output:

```text
0
1
2
3
4
5
6
7
8
9
```

Medan villkoret i Do While-loopen är sant, körs koden inuti loopen. När villkoret blir falskt, avslutas loopen och programmet fortsätter med resten av koden efter loopen.

I detta specifika exempel kommer loopen att köra 10 gånger och skriva ut värdena från 0 till 9.

## Sammanfattning

Do While är en loopstruktur i Java som körs minst en gång och sedan fortsätter att köra så länge som villkoret är sant. Det är användbart när du behöver utföra en viss kod minst en gång innan villkoret kontrolleras.

## Termer

| Term          | Förklaring                                                                                                          |
| ------------- | ------------------------------------------------------------------------------------------------------------------- |
| Do While-loop | En loopstruktur i Java som körs minst en gång och sedan fortsätter att köra så länge som villkoret är sant.         |
| Loop          | En struktur i programmering som gör att en viss kod kan köras upprepade gånger tills ett visst villkor är uppfyllt. |
| Iteration     | En enskild körning av kod inuti en loop.                                                                            |
| Villkor       | Ett uttryck som avgör om en loop ska fortsätta köras eller inte.                                                    |
