---
title: File-klassen
permalink: filhantering/fileklassen
nav_order: 3
parent: Filhantering
grand_parent: Home
author: Marcus Medina
date: 2022-11-20 03:49
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: Java
enhance: false
id: 6d679594-e712-4a30-851e-db2adace5100
school: https://campus.molndal.se/yh
---

# File-klassen

File-klassen i Java, som tillhör paketet `java.io`, erbjuder en mängd användbara metoder för att hantera filer. Du kan använda dessa metoder för att skapa, skriva, läsa och ta bort filer. Exempel på några av de vanligaste metoderna inkluderar `createNewFile`, `delete`, `exists` och `read`. Genom att använda File-klassen kan du enkelt utföra filrelaterade operationer i dina Java-program.

<details open markdown="block">
<summary>
Innehållsförteckning
</summary>
{: .text-delta }

1. TOC
{:toc}
</details>

## TL;DR

CSV (Comma Separated Values) är ett vanligt filformat för att lagra tabulära data i en textbaserad fil. Det är enkelt att skapa, läsa och hantera, och det finns många användningsområden för CSV-filer inom programmering. Java erbjuder metoder för att läsa och skriva CSV-filer, vilket gör det till ett lämpligt val för datahantering och analysprojekt. Var medveten om CSV-filformatets begränsningar och användning av dokumentation för att säkerställa korrekt tolkning av filerna.

## När du läst detta ska du kunna

- Läsa och skriva filer med Java.
- Skapa, flytta och ta bort filer med Java.
- Utforska andra metoder för att hantera filer i Java.

## TL;DR

File-klassen i Java, som tillhör paketet `java.io`, erbjuder användbara metoder för filhantering. Du kan använda dessa metoder för att skapa, skriva, läsa och ta bort filer. Några av de vanligaste metoderna inkluderar `createNewFile`, `delete`, `exists` och `renameTo`. Genom att använda File-klassen kan du enkelt utföra filrelaterade operationer i dina Java-program.

## Beskrivning

Här är metoder som du har tillgängliga i File-klassen:

| Metod                 | Funktion                                                                                    |
| --------------------- | ------------------------------------------------------------------------------------------- |
| `createNewFile`       | Skapar en ny fil på den angivna sökvägen.                                                   |
| `delete`              | Tar bort en befintlig fil.                                                                  |
| `exists`              | Kontrollerar om en fil existerar.                                                           |
| `renameTo`            | Byter namn på en fil.                                                                       |
| `length`              | Returnerar storleken på en fil i bytes.                                                     |
| `canRead`             | Kontrollerar om en fil kan läsas.                                                           |
| `canWrite`            | Kontrollerar om en fil kan skrivas till.                                                    |
| `canExecute`          | Kontrollerar om en fil kan köras som ett program.                                           |
| `isFile`              | Kontrollerar om en fil är en vanlig fil.                                                    |
| `isDirectory`         | Kontrollerar om en fil är en mapp.                                                          |
| `getParent`           | Returnerar sökvägen till filens överordnade mapp.                                           |
| `getName`             | Returnerar filens namn.                                                                     |
| `getPath`             | Returnerar filens sökväg.                                                                   |
| `lastModified`        | Returnerar tidpunkten för senaste ändring av en fil.                                        |
| `list`                | Returnerar en array av filer och mappar i en mapp.                                          |
| `mkdir`               | Skapar en ny mapp på den angivna sökvägen.                                                  |
| `listFiles`           | Returnerar en array av `File`-objekt som representerar filer och mappar i en mapp.          |
| `FileReader`          | Öppnar en befintlig textfil för läsning.                                                    |
| `FileWriter`          | Öppnar en fil för skrivning.                                                                |
| `Files.readAllBytes`  | Läser innehållet i en binär fil som en byte-array.                                          |
| `Files.readAllLines`  | Läser innehållet i en textfil och returnerar det som en array av strängar.                  |
| `Files.readAllText`   | Läser innehållet i en textfil och returnerar det som en sträng.                             |
| `Files.lines`         | Läser innehållet i en textfil och returnerar det som en uppräkningsbar sekvens av strängar. |
| `Files.writeAllBytes` | Skriver en byte-array till en fil.                                                          |
| `Files.writeAllLines` | Skriver en array av strängar till en textfil, en sträng per rad.                            |
| `Files.writeAllText`  | Skriver en sträng till en textfil.                                                          |

Dessa metoder ger oss flexibilitet att utföra olika åtgärder på filer, inklusive skapande, läsning, skrivning, flyttning och radering.

## Exempel

Här är några kodexempel som visar hur man använder några av metoderna i File-klassen:

```java
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class Main {
    public static void main(String[] args) {
        String file = "C:\\Temp\\test.txt";

        // Skapar en fil
        try {
            if (!Files.exists(Paths.get(file))) {
                Files.createFile(Paths.get(file));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        // Skriver till en fil
        try {
            Files.write(Paths.get(file), "Hello World!".getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }

        // Läser innehållet i en fil
        try {
            String text = Files.readString(Paths.get(file));
            System.out.println(text);
        } catch (IOException e) {
            e.printStackTrace();
        }

        // Tar bort en fil
        try {
            Files.delete(Paths.get(file));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```

I detta exempel skapar vi en fil på sökvägen "C:\\Temp\\test.txt" om den inte redan finns. Sedan använder vi metoden `Files.write` för att skriva texten "Hello World!" till filen. Vi använder `Files.readString` för att läsa in innehållet i filen och skriva ut det till konsolen. Slutligen tar vi bort filen med `Files.delete`.

Det finns många fler metoder i File-klassen som kan vara användbara beroende på dina specifika behov. Genom att utforska dokumentationen för File-klassen kan du lära dig mer om var och en av metoderna och hur de kan användas.

## Slutsats

File-klassen i Java erbjuder enkla och kraftfulla metoder för att hantera filer. Oavsett om du behöver skapa, skriva, läsa eller ta bort filer finns det en metod i File-klassen som kan hjälpa dig. Genom att använda de olika metoderna kan du effektivt arbeta med filsystemet i dina Java-applikationer.

## Termer

| Term          | Beskrivning                                                                                                                                                                                                   |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| File          | En klass i `java.io`-paketet som innehåller metoder för att hantera filer.                                                                                                                                    |
| appendText    | En metod i File-klassen som öppnar en befintlig fil för skrivning och lägger till text i slutet av filen.                                                                                                     |
| copy          | En metod i File-klassen som kopierar en fil till en ny plats.                                                                                                                                                 |
| create        | En metod i File-klassen som skapar en ny fil.                                                                                                                                                                 |
| delete        | En metod i File-klassen som tar bort en befintlig fil.                                                                                                                                                        |
| exists        | En metod i File-klassen som kontrollerar om en fil existerar.                                                                                                                                                 |
| move          | En metod i File-klassen som flyttar en fil till en ny plats.                                                                                                                                                  |
| open          | En metod i Java File-klassen som öppnar en fil i en `FileInputStream`.                                                                                                                                        |
| openRead      | Det finns ingen direkt motsvarighet till File-klassens `OpenRead`-metod i Java. Istället kan du använda `FileInputStream`-klassen för att öppna en fil för läsning.                                           |
| openText      | Det finns ingen direkt motsvarighet till File-klassens `OpenText`-metod i Java. Istället kan du använda `FileReader`-klassen för att öppna en befintlig textfil för läsning.                                  |
| openWrite     | En metod i Java File-klassen som öppnar en fil för skrivning med hjälp av `FileOutputStream`.                                                                                                                 |
| readAllBytes  | En metod i Java File-klassen som läser innehållet i en binär fil som en byte-array med hjälp av `FileInputStream`.                                                                                            |
| readAllLines  | En metod i Java File-klassen som läser innehållet i en textfil och returnerar det som en array av strängar. Du kan använda `BufferedReader`-klassen tillsammans med `FileReader`-klassen för att uppnå detta. |
| readAllText   | En metod i Java File-klassen som läser innehållet i en textfil och returnerar det som en sträng med hjälp av `FileReader`.                                                                                    |
| readLines     | En metod i Java File-klassen som läser innehållet i en textfil och returnerar det som en uppräkningsbar sekvens av strängar med hjälp av `BufferedReader` och `FileReader`.                                   |
| writeAllBytes | En metod i Java File-klassen som skriver en byte-array till en fil med hjälp av `FileOutputStream`.                                                                                                           |
| writeAllLines | En metod i Java File-klassen som skriver en lista av strängar till en textfil, en sträng per rad. Du kan använda `BufferedWriter` tillsammans med `FileWriter`-klassen för att uppnå detta.                   |
| writeAllText  | En metod i Java File-klassen som skriver en sträng till en textfil.                                                                                                                                           |

## Slutsats

CSV-filformatet är ett enkelt och praktiskt sätt att lagra och hantera tabulära data. Det används i många olika sammanhang, och med hjälp av Java kan du lätt läsa och skriva CSV-filer för att hantera och analysera data. Var medveten om dess begränsningar och använd rätt dokumentation för att säkerställa korrekt hantering av CSV-filer inom dina projekt.