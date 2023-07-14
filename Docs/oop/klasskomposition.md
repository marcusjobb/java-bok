---
title: Klasskomposition
permalink: oop/klasskomposition
nav_order: 20
parent: Objektorienterad programmering (OOP)
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
id: d9de5f37-89b7-493a-a6bf-48a06da3e643
school: https://campus.molndal.se/yh
---

# Klasskomposition

Klasskomposition är en teknik inom objektorienterad programmering (OOP) där mindre klasser kombineras för att bygga större och mer komplexa klasser. Genom att använda klasskomposition kan vi skapa mer modulära, flexibla och underhållbara lösningar.

## Fördelar

Att använda klasskomposition i din kod kan erbjuda flera fördelar:

- **Återanvändbarhet**: Genom att kombinera mindre och specialiserade klasser kan vi skapa återanvändbar kod. De mindre klasserna kan användas i olika sammanhang och kan även användas i andra större klasser om det behövs.

- **Flexibilitet**: Genom att använda klasskomposition blir koden mer flexibel. Vi kan lägga till eller ta bort komponenter genom att lägga till eller ta bort de mindre klasserna som ingår i den större klassen.

- **Tydlighet och underhållbarhet**: Genom att dela upp funktionaliteten i mindre och självständiga klasser blir koden lättare att förstå och underhålla. Varje klass har sitt eget ansvarsområde och kan ändras separat utan att påverka resten av systemet.

## Begränsningar

Det finns också vissa begränsningar att tänka på när man använder klasskomposition:

- **Komplexitet**: Klasskomposition kan öka komplexiteten i koden om den inte används på ett genomtänkt sätt. Det är viktigt att noggrant planera och designa klassrelationerna för att undvika onödig komplexitet.

- **Beroenden**: Om en klass är beroende av en annan klass genom klasskomposition, kan ändringar i den andra klassen påverka funktionaliteten hos den första klassen. Det är viktigt att vara medveten om beroendena mellan klasserna och att hantera dem på ett lämpligt sätt.

- **Prestanda**: Klasskomposition kan påverka prestandan hos programmet eftersom det kan innebära fler objekt och därmed mer minnesanvändning och bearbetningstid. Det är viktigt att överväga prestandaaspekterna när man använder klasskomposition och att optimera koden vid behov.

## Exempel på användning

Klasskomposition kan tillämpas i en mängd olika scenarier. Här är några exempel på användningsområden där klasskomposition är användbart:

- **Bil och motor**: En bilklass kan innehålla en instans av en motorklass för att hantera bilens motorfunktionalitet.

- **Dator och processor**: En datorklass kan innehålla en instans av en processor för att hantera beräkningsfunktionalitet.

- **Bank och konton**: En bankklass kan innehålla flera instanser av en kontoklass för att hantera olika bankkonton.

- **Spel och karaktärer**: Ett spel kan ha en spelklass som innehåller flera instanser av en karaktärsklass för att hantera spelkaraktärer.

## Kodexempel

Låt oss nu titta på ett kodexempel för att förstå hur klasskomposition kan tillämpas i praktiken. I det här exemplet har vi två klasser: `Person` och `Address`. Klassen `Person` representerar en person och innehåller en instans av klassen `Address` för att hantera adressrelaterad information.

```java
public class Address {
private String street;
private String city;
private String state;
private String zipCode;

public Address(String street, String city, String state, String zipCode) {
this.street = street;
this.city = city;
this.state = state;
this.zipCode = zipCode;
}

// Getters and setters

public String getStreet() {return street;}
public String getCity() {return city;}
public String getState() {return state;}
public String getZipCode() {return zipCode;}
public void setStreet(String street) {this.street = street;}
public void setCity(String city) {this.city = city;}
public void setState(String state) {this.state = state;}
public void setZipCode(String zipCode) {this.zipCode = zipCode;}

@Override
public String toString() {
return "Address{" +
"street='" + street + '\'' +
", city='" + city + '\'' +
", state='" + state + '\'' +
", zipCode='" + zipCode + '\'' +
'}';
}
}
```

Nu har vi en klass som reprenterar en adress. Den innehåller attribut för gatuadress, stad, län och postnummer. Klassen har också en konstruktor som tar emot dessa attribut och en metod `toString()` som returnerar en strängrepresentation av adressen.

```java
public class Person {
private String name;
private int age;
private Address address;

public Person(String name, int age, Address address) {
this.name = name;
this.age = age;
this.address = address;
}

public String getAddressDetails() {
return "Address: " + address.getStreet() + ", " + address.getCity() + ", " + address.getState() + ", " + address.getZipCode();
}
}
```

Här har vi en klass som representerar en person. Den innehåller attribut för namn, ålder och en instans av klassen `Address` för att hantera adressuppgifter. Klassen har också en metod `getAddressDetails()` som returnerar en strängrepresentation av personens adress.

```java
// Användning av klasskomposition
Address address = new Address("123 Main St", "Cityville", "Stateville", "12345");
Person person = new Person("John Doe", 25, address);
System.out.println(person.getAddressDetails());
```

I det här exemplet har vi en `Address`-klass som innehåller attribut för gatuadress, stad, delstat och postnummer. Klassen `Person` innehåller attribut för namn, ålder och en instans av `Address`-klassen för att hantera personens adressuppgifter. Klassen `Person` har också en metod `getAddressDetails()` som returnerar en strängrepresentation av personens adress.

För att använda dessa klasser kan vi skapa en instans av `Person` och tilldela en instans av `Address` till dess `address`-attribut. Vi kan sedan använda `getAddressDetails()`-metoden för att få personens adressuppgifter.

```java
Address address = new Address("123 Main St", "Cityville", "Stateville", "12345");
Person person = new Person("John Doe", 25, address);
System.out.println(person.getAddressDetails());
```

### Output

```
Address: 123 Main St, Cityville, Stateville, 12345
```

I det här kodexemplet skapar vi en instans av `Address` med adressuppgifterna "123 Main St", "Cityville", "Stateville" och "12345". Vi skapar sedan en instans av `Person`

med namnet "John Doe", ålder 25 och den tidigare skapade adressinstansen. Slutligen skriver vi ut personens adressuppgifter med hjälp av `getAddressDetails()`-metoden.

## Slutsats

Klasskomposition är en kraftfull teknik inom objektorienterad programmering som låter oss skapa mer flexibla, återanvändbara och underhållbara lösningar. Genom att kombinera mindre och specialiserade klasser kan vi bygga större och mer komplexa system utan att offra tydlighet och prestanda. Det är viktigt att förstå fördelarna och begränsningarna med klasskomposition för att kunna använda det på bästa sätt.

För vidare läsning och fördjupning i ämnet rekommenderas att utforska designprinciper och mönster inom objektorienterad programmering, såsom "SOLID-principerna" och "komposition över arv". Genom att utveckla din kunskap om dessa koncept kan du bli en skickligare programmerare och bygga mer effektiva och flexibla program.