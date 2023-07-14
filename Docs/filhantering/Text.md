---
title: Text
permalink: filhantering/text
nav_order: 10
parent: Filhantering
author: Marcus Medina
date: 2022-11-16 08:38
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
id: e42c5e7f-dcb8-451f-9026-2ac28dedeb39
school: https://campus.molndal.se/yh
---

# Text

Textfiler är en vanlig filtyp som används för att lagra text. Det är ett textbaserat filformat som används för att lagra data av olika slag.

<details open markdown="block">
<summary>
Innehållsförteckning
</summary>
{: .text-delta }
1. Innehållsförteckning
{:toc}
</details>

## Skapa en textfil

För att skapa en textfil i Java kan följande kod användas:

```java
String contents = "God morgon Mr Bond! Jag har ett meddelande till dig.";
String fileName = "Message.txt";

try {
    FileWriter fileWriter = new FileWriter(fileName);
    BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
    bufferedWriter.write(contents);
    bufferedWriter.close();
    System.out.println("Textfilen har skapats.");
} catch (IOException e) {
    System.out.println("Ett fel inträffade vid skapandet av textfilen.");
}
```

## Läs in en textfil

För att läsa innehållet i en textfil kan följande kod användas:

```java
try {
    File file = new File("Message.txt");
    Scanner scanner = new Scanner(file);
    while (scanner.hasNextLine()) {
        String contents = scanner.nextLine();
        System.out.println(contents);
    }
    scanner.close();
} catch (FileNotFoundException e) {
    System.out.println("Textfilen kunde inte hittas.");
}
```

## Spara en lista i en textfil

För att spara en lista av strängar i en textfil kan följande kod användas:

```java
List<String> names = new ArrayList<>();
names.add("Picard");
names.add("Janeway");
names.add("Kirk");
names.add("Sisko");
names.add("Archer");

try {
    FileWriter fileWriter = new FileWriter("names.txt");
    BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
    for (String name : names) {
        bufferedWriter.write(name);
        bufferedWriter.newLine();
    }
    bufferedWriter.close();
    System.out.println("Listan har sparats i textfilen.");
} catch (IOException e) {
    System.out.println("Ett fel inträffade vid sparandet av listan i textfilen.");
}
```

## Läs in en lista från en textfil

För att läsa innehållet från en textfil och spara det i en lista kan följande kod användas:

```java
List<String> names = new ArrayList<>();

try {
    File file = new File("names.txt");
    Scanner scanner = new Scanner(file);
    while (scanner.hasNextLine()) {
        String name = scanner.nextLine();
        names.add(name);
    }
    scanner.close();
} catch (FileNotFoundException e) {
    System.out.println("Textfilen kunde inte hittas.");
}
```

Detta exempel visar hur man kan skapa, läsa, spara och läsa in textfiler i Java. Genom att använda `FileWriter`, `BufferedWriter`, `FileReader`, `BufferedReader` och `Scanner` kan vi utföra olika operationer på textfiler. Listor kan också enkelt sparas och läsas från textfiler genom att använda dessa metoder.

Det är viktigt att hantera eventuella undantag (exceptions) som kan uppstå vid hantering av filer, till exempel om filen inte hittas eller om det uppstår problem med filåtkomst. Genom att använda try-catch-block kan vi fånga och hantera dessa undantag på ett säkert sätt.

Det är också viktigt att stänga filanslutningar när de inte längre behövs för att frigöra resurser och undvika minnesläckor. I kodexemplen ovan används `close()`-metoden för att stänga anslutningarna efter att de har använts.

## Lägg till text i en textfil

För att lägga till text i en textfil kan följande kod användas:

```java
String contents = "James Bond, din uppgift är enkel men avgörande: Sök upp den fiktiva elakingen och eliminera honom utan nåd. Låt inget stå i vägen för rättvisa och säkerhet. Var din vanliga självsäkra och eleganta själv. Tiden är knapp, agera snabbt och precist. Världen litar på dig, 007. Gör det som behöver göras.";
String fileName = "Message.txt";

try {
    FileWriter fileWriter = new FileWriter(fileName, true);
    BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
    bufferedWriter.newLine();
    bufferedWriter.write(contents);
    bufferedWriter.close();
    System.out.println("Texten har lagts till i textfilen.");
} catch (IOException e) {
    System.out.println("Ett fel inträffade vid tillägg av texten i textfilen.");
}
```

I FileWriter-konstruktorn kan vi ange `true` som andra argument för att lägga till text i en befintlig textfil. Detta gör att vi kan lägga till text i en befintlig textfil utan att skriva över den befintliga texten. Hade vi skrivit false istället för true hade den befintliga texten skrivits över.

## Skriv över en textfil

För att skriva över en textfil kan följande kod användas:

```java
String message = "Message deducted.";
String fileName = "Message.txt";

try {
    FileWriter fileWriter = new FileWriter(fileName);
    BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
    bufferedWriter.write(message);
    bufferedWriter.close();
    System.out.println("Textfilen har skrivits över.");
} catch (IOException e) {
    System.out.println("Ett fel inträffade vid skrivning över textfilen.");
}
```

## Radera en textfil

För att radera en textfil kan följande kod användas:

```java
String fileName = "Message.txt";

try {
    File file = new File(fileName);
    if (file.delete()) {
        System.out.println("Textfilen har raderats.");
    } else {
        System.out.println

("Kunde inte radera textfilen.");
    }
} catch (Exception e) {
    System.out.println("Ett fel inträffade vid radering av textfilen.");
}
```

## Läs in en textfil från en URL

För att läsa innehållet i en textfil från en URL kan följande kod användas:

```java
try {
    URL url = new URL("https://minwebbsida/text.txt");
    Scanner scanner = new Scanner(url.openStream());
    while (scanner.hasNextLine()) {
        String contents = scanner.nextLine();
        System.out.println(contents);
    }
    scanner.close();
} catch (IOException e) {
    System.out.println("Ett fel inträffade vid läsning av textfilen.");
}
```

## Spara en textfil från en URL

För att spara en textfil från en URL kan följande kod användas:

```java
try {
    URL url = new URL("https://minwebbsida/text.txt");
    InputStream inputStream = url.openStream();
    Files.copy(inputStream, Paths.get("text.txt"), StandardCopyOption.REPLACE_EXISTING);
    System.out.println("Textfilen har sparats.");
} catch (IOException e) {
    System.out.println("Ett fel inträffade vid sparande av textfilen.");
}
```

## Lista på termer i artikeln

| Ord                | Förklaring                                                               |
| ------------------ | ------------------------------------------------------------------------ |
| Buffer             | En buffert är en tillfällig lagringsplats för data.                      |
| Buffering          | Att använda en buffert för att lagra data.                               |
| Byte               | En byte är en enhet för digital information som består av åtta bitar.    |
| Byte array         | En byte array är en samling av bytes.                                    |
| Byte stream        | En byte stream är en sekvens av bytes.                                   |
| Character stream   | En character stream är en sekvens av tecken.                             |
| Close              | Att stänga en filanslutning.                                             |
| Copy               | Att kopiera en fil.                                                      |
| File               | En fil är en samling av data som lagras på en enhet.                     |
| File path          | En filväg är en sträng som identifierar en fil.                          |
| File writer        | En filskrivare är en klass som används för att skriva till filer.        |
| File reader        | En filskrivare är en klass som används för att läsa från filer.          |
| File input stream  | En filinmatningsström är en ström som används för att läsa från filer.   |
| File output stream | En filutmatningsström är en ström som används för att skriva till filer. |
| File writer        | En filskrivare är en klass som används för att skriva till filer.        |
| File reader        | En filskrivare är en klass som används för att läsa från filer.          |

## Obligatorisk Dad-joke

Varför gillar textfiler att gå på fester?

För att de älskar att dra skämt om "line"-dans!