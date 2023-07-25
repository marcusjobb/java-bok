---
title: Kodexempel
permalink: examples/index
nav_order: 25
parent: Variabler
grand_parent: Home
author: Marcus Medina
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
has_children: true
id: 0137a8fe-234f-46ec-a9ae-cde488a6ae3c
school: https://campus.molndal.se/yh
---

# Kodexempel

Hur använder vi variabler rent praktiskt? Jag ska berätta en hemlighet för dig, variabler är det vi använder mest i programmering. Det är därför vi har så många olika typer av variabler, för att vi ska kunna använda dem på olika sätt. När du kommer till OOP ska du få nöjet att skapa efna variabeltyper, hur coolt är inte det?

Variabler hjälper oss att hålla koll på värden, funktioner och objekt. På så sätt behöver vi inte hålla reda på allt i huvudet, vi kan skriva ner det och låta datorn hålla reda på det åt oss.

Kolla det här exemplet:

```java
class Main {
  public static void main(String[] args) {

    System.out.println("Ett kilo äpplen kostar 25 kr");
    System.out.println("Jag köpte 3 kilo äpplen");
    System.out.println("Jag betalade 75 kr");

  }
```

Enkelt och snyggt, men vad händer om vi i teorin funderar på vad det skulle kostat med 2,5 kg äpplen? Då måste vi räkna om allt i huvudet, eller skriva om allt i koden. Det är inte så effektivt, eller hur?

Vi provar igen

```java
class Main {
  public static void main(String[] args) {

    int prisPerKilo = 25;
    int kilo = 3;
    int betalat = prisPerKilo * kilo;

    System.out.println("Ett kilo äpplen kostar " + prisPerKilo + " kr");
    System.out.println("Jag köpte " + kilo + " kilo äpplen");
    System.out.println("Jag betalade " + betalat + " kr");

  }
```

Om vi nu ändrar oss när det gäller pris, eller när det gäller hur mycket vi handlat ändrar vi bara värdena på variablerna. Vi behöver inte ändra i koden, vi behöver inte räkna om allt i huvudet. Vi kan bara ändra variablerna och köra koden igen.

Det är det som är så bra med variabler, vi kan använda dem för att hålla koll på värden.

Det är som när du skriver ett document i en ordbehandlare, och inser att du stavat namnet Wilhem helt fel, personen heter ju "Whilhelm" och inte "Wilhem". Om du inte använder variabler måste du gå igenom hela dokumentet och ändra alla felstavningar. Om du använder variabler kan du bara ändra värdet på variabeln och alla felstavningar ändras automatiskt.

Så med programmering kan du alltså ändra hela programmets beteende genom att ändra en variabel. Det är som "The butterfly effect"._"En fjärils vingslag i Brasilien kan orsaka en tornado i Texas"_.

Det är därför vi använder variabler, för att vi kan ändra hela programmets beteende genom att ändra en variabel. När vi skriver program som vi sedan skeppar vidare till våra kunder, så ger vi kunden chansen att vara fjärilen, att ange de värden de vill och vi låter vårt program vara orkanen som orsakas i Brasilien, eller Texas.

En programmerare är inte en tråkig grå kodare som gömmer sig i städskåpet, en programmerare är som en gud som skapar en hel värld till sina användare. En programmerare är en skapare, en gud, en kreatör.

... och för att kontrollera den världen vi skapar använder vi **variabler**.

Vi ska titta på några exempel på hur vi kan använda variabler.