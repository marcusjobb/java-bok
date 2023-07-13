---
author: Marcus Medina
title: Ternary if
nav_order: 6
parent: If
grand_parent: Java
permalink: if/ternaryif
date: 2023-07-02
layout: default
enhance: false
codelanguage: C#
school: https://campus.molndal.se/yh
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
id: 33ea4332-b1cb-4c58-bd72-c428c3d35d96
---

## Beskrivning
Ternary if, även känd som conditional operator, är en kompakt syntax i programmeringsspråket Java som tillåter oss att uttrycka en enkel if-sats på en rad. Det ger oss möjlighet att utvärdera ett villkor och välja en av två uttryck beroende på om villkoret är sant eller falskt. Syntaxen för ternary if består av tre delar: villkor, frågetecken och uttryck för sant och falskt. Det är ett kraftfullt verktyg som kan göra koden mer koncis och läsbar.
## Exempel


Här är ett exempel som visar hur man använder ternary if i Java:

```java
int age = 18;
String result = age >= 18 ? "Du är myndig" : "Du är inte myndig";
System.out.println(result);

```
I detta exempel tilldelas strängen "Du är myndig" till variabeln "result" om värdet av variabeln "age" är större eller lika med 18. Annars tilldelas strängen "Du är inte myndig". Sedan skrivs värdet av "result" ut till konsolen.
Det är viktigt att notera att ternary if är ett uttryck och kan användas inuti andra uttryck eller tilldelningar. Det ger oss möjlighet att göra kompakt och läsbar kod för att hantera enkla villkor.
En annan användning av ternary if är när vi redan har en boolean-variabel och vi behöver välja mellan två värden baserat på dess värde. Här är ett exempel:
boolean catIsCute = true;
String result = catIsCute ? "Katten är söt <3" : "Katten är inte söt :(";

```I det här exemplet tilldelas strängen "Katten är söt <3" till variabeln "result" om värdet av "catIsCute" är sant (true). Annars tilldelas strängen "Katten är inte söt :(".
Ternary if är ett verktyg som kan göra koden mer läsbar och koncis i situationer där vi behöver göra en enkel villkorskontroll och tilldela olika värden beroende på resultatet.
## Slutsats


Ternary if, eller conditional operator, är ett användbart verktyg inom programmering som gör det möjligt för oss att uttrycka en enkel if-sats på en rad. Det hjälper oss att göra koden mer koncis och läsbar genom att välja mellan två uttryck beroende på om ett villkor är sant eller falskt. Genom att använda ternary if kan vi undvika att skriva en längre if-sats när vi bara behöver hantera enkla villkor.
Ternary if använder följande syntax:
villkor ? uttryck om sant : uttryck om falskt
Där "villkor" är det uttryck som utvärderas, "?" är frågetecknet som markerar början på ternary if, "uttryck om sant" är det värde eller uttryck som tilldelas om villkoret är sant, och "uttryck om falskt" är det värde eller uttryck som tilldelas om villkoret är falskt.
Det är viktigt att notera att ternary if bara är lämplig för enkla villkor och enkla uttryck. Om du behöver hantera mer komplexa villkor eller flera uttryck kan det vara bättre att använda en vanlig if-sats.
## Mer läsning


- [Java Conditional Operator (?:)](https://docs.oracle.com/en/java/javase/14/docs/api/java.base/java/lang/ConditionalOperator.html)
- [Java If-else statement](https://docs.oracle.com/en/java/javase/14/docs/api/java.base/java/lang/IfStatement.html)
## Termer


- Ternary if: En kompakt syntax i Java som tillåter oss att uttrycka en enkel if-sats på en rad.
- Conditional operator: En annan term för ternary if, som beskriver dess användning för att utvärdera och välja mellan två uttryck baserat på ett villkor.
## Obligatorisk pappaskämt


Varför använde sig katten av datorn?
För att skriva ett "purr"-gram!```
condition ? expression if true : expression if false
Där "condition" är det uttryck som utvärderas, "?" är frågetecknet som markerar början på ternary if, "expression if true" är det värde eller uttryck som tilldelas om villkoret är sant, och "expression if false" är det värde eller uttryck som tilldelas om villkoret är falskt.
- [Java Conditional Operator (?:)](https://docs.oracle.com/en/java/javase/14/language/conditional-operator.html)
- [Java If-else statement](https://docs.oracle.com/en/java/javase/14/language/if.html)
Varför älskar programmerare att använda ternary if? 
För att det gör koden kortare och "ter"-rific! 😄