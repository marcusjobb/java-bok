---
title: Stringformat
permalink: strings/stringformat
nav_order: 1
parent: Stränghantering
grand_parent: Variabler
author: Marcus Medina
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
id: 9fb2fe12-8633-4d80-b8d2-4c098d25751b
school: https://campus.molndal.se/yh
---

# Stringformat

## Introduktion

Nu ska vi att utforska hur vi kan hantera text på ett strukturerat och roligt sätt med hjälp av "String format". Det är verkligen coolt, för det låter oss skapa textsträngar med dynamiska variabler som ger oss en personlig touch i våra applikationer. Låt oss ta reda på hur vi kan göra textbehandling till en kul och inspirerande upplevelse!

Tänk dig mardrömmen att skriva ut fem personer med namn och ålder

```java
String name1 = "Anakin";
int age1 = 9;
String name2 = "Padme";
int age2 = 14;
String name3 = "Obi Wan";
int age3 = 25;
String name4 = "Qui Gon";
int age4 = 38;

System.out.println("Namn: " + name1 + ", Ålder: " + age1);
System.out.println("Namn: " + name2 + ", Ålder: " + age2);
System.out.println("Namn: " + name3 + ", Ålder: " + age3);
System.out.println("Namn: " + name4 + ", Ålder: " + age4);
```

Det funkar men det ser rörigt ut, med String.format kan vi göra det snyggare

```java
System.out.println(String.format("Namn: %s, Ålder: %d", name1, age1));
System.out.println(String.format("Namn: %s, Ålder: %d", name2, age2));
System.out.println(String.format("Namn: %s, Ålder: %d", name3, age3));
System.out.println(String.format("Namn: %s, Ålder: %d", name4, age4));
```

## TL;DR

"String format" i Java låter oss skapa strukturerade textsträngar med variabler för att göra textbehandlingen lättläst och anpassningsbar. Det ger oss möjlighet att skapa imponerande användargränssnitt och ge våra applikationer en personlig touch.

## När du läst detta ska du kunna

- Förstå konceptet av "String format" i Java.
- Använda formatmönster för att skapa strukturerad och dynamisk text.
- Använda olika specifikatorer för att formatera olika typer av variabler.
- Använda "String format" för att förbättra användarupplevelsen i Java-applikationer.

## Vad är "String format" i Java?

"String format" är som en magisk trollformel i Java, och den låter oss skapa strukturerade textsträngar med dynamiska variabler. Istället för att bygga texten manuellt, kan vi använda speciella platshållare i formatmönster, och sedan fylla i dessa platshållare med riktiga värden vid körningstid. Det är coolt, för det ger oss en flexibel och dynamisk textbehandling!

## Användning av Formatmönster

Vi skapar våra formatmönster med speciella tecken som representerar platshållare för variabler. Ett vanligt exempel är "%s", som används för att ersätta med en sträng. Kolla här:

```java
String name = "Alice"; // Who the f*ck is Alice?
String formattedString = String.format("Hej, mitt namn är %s.", name);
System.out.println(formattedString);

System.out.println();

String name = "Luka"; // Detta är en hänvisning till en sång av Suzanne Vega :)
String floor ="andra";
String song = String.format("My name is %s, I live on the %s floor", name, floor);
System.out.println(song);
```

Resultatet blir:

```
Hej, mitt namn är Alice.

My name is Luka, I live on the andra floor
```

## Användning av Specifikatorer

Det finns massor av olika specifikatorer för olika typer av variabler. Till exempel:

- "%d" för heltal (int).
- "%f" för flyttal (float eller double).
- "%c" för ett tecken (char).
- "%b" för en boolean (true eller false).
- "%s" för en sträng (String).

Kolla in det här exemplet:

```java
int age = 30;
double height = 1.75;
char gender = 'M';
boolean isStudent = true;

String formattedInfo = String.format("Ålder: %d, Längd: %.2f m, Kön: %c, Student: %b"
                                    , age, height, gender, isStudent);

System.out.println(formattedInfo);
```

Resultatet blir:

```
Ålder: 30, Längd: 1.75 m, Kön: M, Student: true
```

## Anpassningsbarhet med "String format"

Med "String format" kan vi skapa superanpassningsbar text som passar olika språk och regioner. Genom att ändra formatmönster och ersättningsvärden dynamiskt kan vi göra texten ännu mer tilltalande för våra användare och skapa en personlig touch i våra Java-applikationer. Hur coolt är inte det?

## Exempelkod - Användning av "String format" för Valuta

Vi kan använda "String format" för att formatera belopp till olika valutor. Kolla in detta:

```java
import java.util.Locale;
import java.util.Currency;

public class CurrencyFormatter {
    public static void main(String[] args) {
        double amount = 1000.50;
        Locale swedishLocale = new Locale("sv", "SE");
        Currency swedishCurrency = Currency.getInstance(swedishLocale);

        String formattedAmount = String.format("%,.2f %s"
                        , amount, swedishCurrency.getSymbol(swedishLocale));
        System.out.println("Belopp i svensk valuta: " + formattedAmount);
    }
}
```

Resultatet blir:

```
Belopp i svensk valuta: 1 000,50 kr
```

## Slutsats

Visst är  "String format" coolt?. Det är så grymt att kunna skapa strukturerade och dynamiska textsträngar med detta verktyg. Genom att använda formatmönster och specifikatorer kan vi göra textbehandlingen roligare och mer engagerande för våra användare. Så var kreativ och låt din Java-kod glänsa med "String format" och sprid glädje och effektivitet i dina applikationer!

## Obligatorisk dad joke:

Varför älskar Java-utvecklare "String format" så mycket?

För att de vet att "String" och "format" tillsammans kan skapa fantastiska strängar! 😄