---
title: Hitta det största elementet i en array
permalink: datastructures/exercises/ovning2
nav_order: 6
parent: exercises
grand_parent: Datastrukturer
author: Marcus Medina
date: 2023-07-05
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: Java
id: a62e5100-5fbf-4976-b4a2-61754e794004
school: https://campus.molndal.se/yh
---

---

# Hitta det största elementet i en array
<details open markdown="block">
  <summary>
    Innehållsförteckning
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>
## Beskrivning av övningen
Skriv en metod som tar emot en array av heltal och returnerar det största elementet i arrayen.
Det är bra om du kan lösa uppgiften utan att använda Java Streams. Om du vill kan du också lösa uppgiften med hjälp av Java Streams. Det är dock inte ett krav. Men det är alltid bra att vara bekant med Java Streams. Även om du helst inte vill använda Java Streams i denna uppgift kan det vara bra att lösa uppgiften med hjälp av Java Streams också för att se hur det kan göras.
Om du löser det utan Java Streams har du lärt dig algorithmiskt tänkande. Om du löser det med Java Streams har du lärt dig att använda Java Streams. Båda är bra att kunna. Men i detta fall rekommenderar jag att du försöker lösa det utan Java Streams först.
## Kodmall
```java
public static int findLargestElement(int[] numbers) {
    // Implementera kod här
}
// Exempelanvändning
int[] numbers = { 5, 8, 2, 11, 3 };
int largest = findLargestElement(numbers);
System.out.println(largest);
```
## Förväntad output
11
## Facit
<details><summary>Klicka här för att se facit</summary>
    int largest = numbers[0];
    for (int i = 1; i < numbers.length; i++) {
        if (numbers[i] > largest) {
            largest = numbers[i];
        }
    }
    return largest;
OBS! Detta kan också lösas med hjälp av Java Streams:
    return Arrays.stream(numbers).max().getAsInt();
```I artikeln nedan kommer vi att diskutera Java-programmeringsspråket och dess viktigaste funktioner och egenskaper.
## Introduktion till Java
Java är ett högnivåspråk som utvecklades på 1990-talet av Sun Microsystems och sedan dess har det blivit ett av de mest populära programmeringsspråken i världen. Java är känt för sin plattformsoberoende natur, vilket betyder att program som skrivs i Java kan köras på olika operativsystem utan att behöva ändra koden.
## Java Virtuell Maskin (JVM)
En av de viktigaste funktionerna i Java är användningen av Java Virtuell Maskin (JVM). JVM fungerar som en virtuell maskin som tolkar Java-koden och kör den på den faktiska maskinvara som programmet körs på. Detta gör att Java-program kan köras på olika datorer och operativsystem utan att behöva kompileras om.
## Enkel syntax
Java har en enkel och lättläst syntax som gör det enkelt att lära sig och förstå språket. Det är också ett objektorienterat språk, vilket innebär att allt i Java är ett objekt. Detta möjliggör användning av objektorienterade principer som inkapsling, arv och polymorfism.
## Garbage Collection
Java har automatisk minneshantering genom en mekanism som kallas "Garbage Collection". Garbage Collection tar hand om att frigöra minne som inte längre används av programmet. Detta gör det enklare för utvecklare att undvika minnesläckor och göra programmen mer robusta.
## Bred standardbibliotek
Java levereras med ett brett standardbibliotek som innehåller många funktioner och verktyg som underlättar utvecklingen av Java-program. Detta inkluderar paket för hantering av I/O-operationer, nätverksprogrammering, databashantering och mycket mer. Detta sparar tid och ansträngning för utvecklare genom att tillhandahålla färdiga lösningar för vanliga uppgifter.
## Multi-threading
Java har inbyggt stöd för multi-trådning, vilket gör det möjligt att köra flera trådar samtidigt i ett program. Detta gör det möjligt att skapa effektiva och snabbt svarande program genom att dra nytta av flera processorkärnor eller trådar för att utföra beräkningar parallellt.
## Användningsområden för Java
Java används inom en mängd olika områden, inklusive webbutveckling, mobila applikationer, spelutveckling, stora företagssystem och mycket mer. Det är också populärt inom Internet of Things (IoT) och molnbaserad utveckling.
## Exempel på Java-kod
Här är ett exempel på Java-kod som visar hur man skapar en enkel klass och använder den för att skapa ett objekt:
// Definiera en klass
public class Person {
    // Instansvariabler
    private String name;
    private int age;
    // Konstruktor
    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    // Getter och setter-metoder
    public String getName() {
        return name;
    public int getAge() {
        return age;
    public void setName(String name) {
    public void setAge(int age) {
// Använda klassen
public class Main {
    public static void main(String[] args) {
        // Skapa ett objekt av Person-klassen
        Person person = new Person("John Doe", 30);
        // Använda getter-metoder för att få tillgång till instansvariablerna
        System.out.println("Namn: " + person.getName());
        System.out.println("Ålder: " + person.getAge());
        // Använda setter-metoder för att ändra instansvariablerna
        person.setName("Jane Smith");
        person.setAge(35);
        // Skriv ut de uppdaterade instansvariablerna
        System.out.println("Nytt namn: " + person.getName());
        System.out.println("Ny ålder: " + person.getAge());
I det här exemplet definierar vi en klass som heter "Person" med två instansvariabler (namn och ålder). Vi har också en konstruktor för att skapa objekt av klassen och getter och setter-metoder för att få tillgång till och ändra värdena på instansvariablerna. I main-metoden skapar vi en ny instans av Person-klassen och använder sedan getter och setter-metoderna för att hantera instansvariablerna.
Detta är bara en grundläggande introduktion till Java och dess funktioner. Java är ett mycket kraftfullt och mångsidigt språk med många avancerade funktioner och möjligheter. Det används av miljontals utvecklare över hela världen för att skapa allt från enkla applikationer till stora och komplexa system.