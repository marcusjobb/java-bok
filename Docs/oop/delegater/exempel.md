---
title: Exempel
permalink: oop/delegater/exempel
nav_order: 2
parent: delegater
grand_parent: Home
author: Marcus Medina
date: 2022-11-20 02:59
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
id: e2a625a1-45b1-4d4c-b88b-b868ce6dc947
school: https://campus.molndal.se/yh
---

# Exempel
klass som innehåller en metod för att utföra en beräkning med hjälp av delegater. |
| Addera      | En metod som tar två heltal som parametrar och returnerar deras summa.        |
| Subtrahera  | En metod som tar två heltal som parametrar och returnerar deras differens.    |
| Multiplicera| En metod som tar två heltal som parametrar och returnerar deras produkt.      |
| Dividera    | En metod som tar två heltal som parametrar och returnerar deras kvot.         |

En delegat i C# är en typ som representerar referenser till metoder med en specifik signatur. Delegater används ofta för att implementera händelsehantering och callback-funktioner. En delegat kan användas för att skapa en referens till en metod och sedan användas för att anropa den metoden.
Här är ett exempel på hur man använder en delegat i C#:

```java
// Definiera en delegat med namnet CalcParams som tar två heltal som parametrar och returnerar inget.
delegate void CalcParams(int a, int b);

public class Calculator {
// Metod som utför en beräkning med hjälp av delegaten CalcParams.
public void PerformCalculation(int a, int b, CalcParams calculation) {
calculation(a, b);

public static void main(String[] args) {
// Skapa en instans av Calculator-klassen.
Calculator calculator = new Calculator();
// Skapa en instans av delegaten CalcParams som refererar till metoden Addera.
CalcParams addDelegate = new CalcParams(calculator.Addera);
// Anropa PerformCalculation-metoden och skicka med delegaten Addera.
calculator.PerformCalculation(5, 3, addDelegate);
}
}
```

I det här exemplet definierar vi en delegat med namnet CalcParams som tar två heltal som parametrar och returnerar inget. Sedan skapar vi en instans av Calculator-klassen och en instans av delegaten CalcParams som refererar till metoden Addera. Vi anropar sedan PerformCalculation-metoden på instansen av Calculator-klassen och skickar med delegaten Addera. När PerformCalculation-metoden anropas, kommer den att utföra beräkningen genom att anropa delegaten med de angivna parametrarna.

Metoden Addera adderar två heltal och skriver ut resultatet till konsolen.
Detta är ett exempel på hur man använder en delegat i C#. I Java kan man använda liknande koncept med hjälp av gränssnitt och lambda-uttryck. Nedan följer ett exempel på hur man skulle implementera samma funktionalitet i Java:

```java
// Definiera ett gränssnitt med namnet CalcParams som har en metod som tar två heltal som parametrar och returnerar inget.
interface CalcParams {
void calculate(int a, int b);

public class Calculator {
// Metod som utför en beräkning med hjälp av gränssnittet CalcParams.
public void performCalculation(int a, int b, CalcParams calculation) {
calculation.calculate(a, b);

public class Main {
public static void main(String[] args) {
// Skapa en lambda-uttryck som implementerar gränssnittet CalcParams och adderar två heltal.
CalcParams addLambda = (int a, int b) -> {
int sum = a + b;
System.out.println("Summan av " + a + " och " + b + " är " + sum);
};
// Anropa performCalculation-metoden och skicka med lambda-uttrycket.
calculator.performCalculation(5, 3, addLambda);
}
}
```

I det här exemplet definierar vi ett gränssnitt med namnet CalcParams som har en metod calculate som tar två heltal som parametrar och returnerar inget. Sedan skapar vi en instans av Calculator-klassen och en lambda-uttryck som implementerar gränssnittet CalcParams och adderar två heltal. Vi anropar sedan performCalculation-metoden på instansen av Calculator-klassen och skickar med lambda-uttrycket. När performCalculation-metoden anropas, kommer den att utföra beräkningen genom att anropa calculate-metoden på lambda-uttrycket med de angivna parametrarna.

Detta är ett exempel på hur man kan implementera samma funktionalitet med hjälp av gränssnitt och lambda-uttryck i Java.