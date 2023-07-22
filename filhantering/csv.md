---
title: CSV
permalink: filhantering/csv
nav_order: 1
parent: Filhantering
grand_parent: Home
author: Marcus Medina
date: 2022-11-16 08:38
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
id: d25724cc-65a5-4b57-b737-c1410c5b51b3
school: https://campus.molndal.se/yh
---

# CSV

Filformatet CSV (Comma Separated Values) är ett filformat som används för att lagra data i en tabell. Det är ett vanligt filformat som används för att lagra data i Excel. Det är ett textbaserat filformat som använder kommatecken för att separera värdena i en rad. CSV-filer kan enkelt läsas och skrivas med hjälp av Java-kod.

<details open markdown="block">
<summary>
Innehållsförteckning
</summary>
{: .text-delta }
1. TOC
{:toc}
</details>

## Fördelar

CSV-filformatet har flera fördelar när det gäller att lagra och hantera data:

- **Enkelhet**: CSV-filer är lätta att skapa och förstå. Eftersom det är ett textbaserat format kan det enkelt redigeras med hjälp av en textredigerare eller ett kalkylbladsprogram.
- **Kompatibilitet**: CSV-filer kan läsas och skrivas av de flesta programvaror och programmeringsspråk. Detta gör det enkelt att dela och utbyta data mellan olika system.
- **Effektivitet**: CSV-filer är kompakta eftersom de använder en enkel textrepresentation för att lagra data. Detta minimerar filstorleken och gör det snabbt att läsa och skriva data.
- **Tabellstruktur**: CSV-filer behåller tabellstrukturen, vilket gör det enkelt att representera relationella data. Varje rad i filen motsvarar en post i tabellen, och varje kolumn motsvarar en attribut eller en egenskap för posten.

## Begränsningar

Trots sina fördelar har CSV-filer vissa begränsningar att vara medveten om:

- **Ingen standard**: Det finns ingen officiell standard för CSV-filformatet, vilket kan leda till inkompatibiliteter mellan olika implementationer. Det är viktigt att vara medveten om vilka regler och konventioner som används för att skapa och tolka CSV-filer.
- **Begränsad datatypsstöd**: CSV-filer hanterar bara textbaserade data. Om du behöver lagra mer komplexa datatyper som datum, tid eller binära data kan det kräva extra ansträngning för att konvertera och tolka dessa värden korrekt.
- **Brister i struktur**: CSV-filer saknar en inbyggd mekanism för att beskriva datastrukturen. Det innebär att det kan vara svårt att veta vad varje kolumn representerar om det inte finns en tydlig dokumentation eller överenskommelse om filens innehåll.

## Användningsområden

CSV-filer används inom olika områden och har många användningsområden:

- **Dataimport och -export**: CSV-filer används ofta för att importera och exportera data från olika program och system. Det kan vara användbart när du behöver överföra data mellan olika databaser, kalkylblad eller applikationer.
- **Dataanalys**: CSV-filer är vanliga inom dataanalys och affärsintelligens. Genom att exportera data från olika källor till CSV-format kan du samla och analysera informationen med hjälp av specialiserade analysverktyg eller skript.
- **Testdata**: CSV-filer kan användas för att skapa testdata för programvarutestning. Genom att generera CSV-filer med olika scenarier och värden kan du testa programmet med olika dataset och se till att det fungerar korrekt i olika situationer.
- **Konfigurationsfiler**: CSV-filer kan användas som en enkel form av konfigurationsfiler. Du kan använda dem för att lagra och läsa in inställningar eller parametrar som behövs för att konfigurera en applikation eller ett system.

## Kodexempel

Här är några kodexempel som visar hur du kan läsa och skriva CSV-filer i Java:

### Läsning av CSV-fil

```java
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class CSVReader {
    public static void main(String[] args) {
        String file = "myfile.csv";

        try (BufferedReader br = new BufferedReader(new FileReader(file))) {
            String line;
            while ((line = br.readLine()) != null) {
                String[] values = line.split(",");
                for (String value : values) {
                    System.out.print(value + " ");
                }
                System.out.println();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```

I det här exemplet används `BufferedReader` och `FileReader` för att läsa in CSV-filen rad för rad. Sedan används `String.split` för att dela upp varje rad i separata värden baserat på kommatecken. Till sist skrivs varje värde ut på konsolen.

### Skrivning till CSV-fil

```java
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.List;

public class CSVWriter {
    public static void main(String[] args) {
        List<Person> people = new ArrayList<>();
        people.add(new Person(1, "Clark Kent", "Superman", 35));
        people.add(new Person(2, "Bruce Wayne", "Batman", 40));
        people.add(new Person(3, "Barry Allen", "Flash", 25));

        try (BufferedWriter bw = new BufferedWriter(new FileWriter(file))) {
            // Lägg till rubriker
            bw.write("Id,Namn,Alias,Ålder");
            bw.newLine();
            // Lägg till data
            for (Person person : people) {
                bw.write(person.getId() + "," + person.getName() + "," + person.getAlias() + "," + person.getAge());
                bw.newLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

class Person {
    private int id;
    private String name;
    private String alias;
    private int age;

    public Person(int id, String name, String alias, int age) {
        this.id = id;
        this.name = name;
        this.alias = alias;
        this.age = age;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getAlias() {
        return alias;
    }

    public int getAge() {
        return age;
    }
}
```

I det här exemplet används `BufferedWriter` och `FileWriter` för att skriva data till CSV-filen. Först läggs rubrikerna till med `bw.write` och `bw.newLine`. Sedan läggs varje person i listan till med `bw.write` och `bw.newLine`.

I detta exempel används en lista av `Person`-objekt för att hålla data. Sedan används `StringBuilder` för att bygga upp innehållet i CSV-filen. Till sist skrivs strängen till filen med `File.WriteAllText`.

## Kodförklaringar

### Files.readAllLines

`Files.readAllLines` läser in alla rader i en fil och lägger dem i en lista. Varje rad blir ett element i listan.

### String.split

`String.split` delar upp en sträng i en lista av strängar. Den delar upp strängen vid varje komma.

### StringBuilder

`StringBuilder` är en klass som används för att bygga upp en sträng. Det är en effektivare metod än att använda strängkonkatenation. Det är en klass som finns i `java.lang`.

### StringBuilder.append

`StringBuilder.append` lägger till en rad till strängen. Den lägger till en radbrytning efter raden.

### Files.write

`Files.write` skriver en sträng till en fil. Den skriver över allt som finns i filen.

## Slutsats

CSV-filformatet är ett enkelt och flexibelt sätt att lagra och hantera tabulära data. Det är vanligt förekommande inom olika områden, inklusive datahantering, analys och testning. Med hjälp av Java kan du enkelt läsa och skriva CSV-filer och manipulera data enligt dina behov. Var medveten om dess begränsningar och regler för att få ut mesta möjliga av detta filformat.

## Termer

| Term              | Förklaring                                                         |
| ----------------- | ------------------------------------------------------------------ |
| CSV               | Comma Separated Values                                             |
| Filformat         | Ett sätt att lagra data i en fil                                   |
| Textbaserat       | Ett filformat som använder text för att representera data          |
| Kompatibilitet    | Förmågan att fungera tillsammans med andra system                  |
| Prestanda         | Hur snabbt eller effektivt ett system fungerar                     |
| Datatyp           | En typ av data som kan lagras i en variabel                        |
| Binär             | Ett filformat som använder binära tal för att representera data    |
| Datastruktur      | Ett sätt att organisera data i en fil                              |
| Dataanalys        | Att analysera data för att hitta mönster och trender               |
| Affärsintelligens | Att använda data för att fatta beslut och förbättra verksamheten   |
| Testning          | Att testa ett program för att hitta fel och problem                |
| Konfigurationsfil | En fil som innehåller inställningar och parametrar för ett program |
| Inställningar     | Parametrar som används för att konfigurera ett program             |

## Länkar

- [CSV-filformatet](https://en.wikipedia.org/wiki/Comma-separated_values)
- [CSV-filformatet i Java](<https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/nio/file/Files.html#write(java.nio.file.Path,java.lang.Iterable,java.nio.file.OpenOption...)>)
- [Google Kalender](https://calendar.google.com/)
- [Outlook Kalender](https://outlook.live.com/calendar/0/view/month)
- [Google Kalender CSV](https://support.google.com/calendar/answer/37118?hl=en&co=GENIE.Platform%3DDesktop#zippy=%2Ccreate-or-edit-a-csv-file)
