---
author: Marcus Medina
title: Path-klassen
nav_order: 18
parent: Filhantering
grand_parent: Home
permalink: filhantering/Pathklassen
date: 2022-11-20 03:49
layout: default
author_url: https://marcusmedina.pro
enhance: false
author_github: https://github.com/marcusjobb
id: b907f3be-d890-404d-8133-486e55ab91cc
codelanguage: C#
school: https://campus.molndal.se/yh
---

Path-klassen i Java erbjuder verktyg för att hantera sökvägar till filer och mappar. Genom att använda Path-klassens olika metoder kan vi enkelt utföra operationer som att slå ihop sökvägar, extrahera information om filer och mappar, ändra filändelser och mycket mer. Detta gör det lättare att arbeta med filsystemet inom våra program och skapa bättre och mer robusta applikationer.

```java
import java.nio.file.Path;
import java.nio.file.Paths;

public class PathExample {
    public static void main(String[] args) {
        // Skapa en sökväg till en fil
        Path filePath = Paths.get("C:\\Users\\User\\Documents\\file.txt");

        // Slå ihop sökvägar
        Path combinedPath = filePath.resolve("subfolder\\file2.txt");

        // Extrahera filnamn
        String fileName = filePath.getFileName().toString();

        // Byta filändelse
        Path newFilePath = filePath.resolveSibling(fileName.replace(".txt", ".csv"));

        // Kontrollera om sökvägen har en filändelse
        boolean hasExtension = filePath.toString().contains(".");

        // Skriv ut sökvägarna
        System.out.println("File Path: " + filePath);
        System.out.println("Combined Path: " + combinedPath);
        System.out.println("File Name: " + fileName);
        System.out.println("New File Path: " + newFilePath);
        System.out.println("Has Extension: " + hasExtension);
    }
}
```

I det här exemplet använder vi Path-klassen för att utföra olika operationer på sökvägar. Vi skapar en sökväg till en fil och visar hur man slår ihop sökvägar, extraherar filnamn, ändrar filändelser och kontrollerar om en sökväg har en filändelse. Vi använder också metoden `resolveSibling` för att byta filändelse och `resolve` för att slå ihop sökvägar.

Resultatet av körningen av detta program är:

```
File Path: C:\Users\User\Documents\file.txt
Combined Path: C:\Users\User\Documents\subfolder\file2.txt
File Name: file.txt
New File Path: C:\Users\User\Documents\file.csv
Has Extension: true
```

Som du kan se ger Path-klassen oss enkla och effektiva verktyg för att hantera sökvägar till filer och mappar i Java-program.

Oavsett om du behöver slå ihop sökvägar, extrahera information om filer och mappar eller ändra filändelser, kan Path-klassen vara till stor hjälp. Genom att utforska dokumentationen för Path-klassen kan du lära dig mer om de olika metoderna och hur de kan användas för att hantera sökvägar i dina Java-program.

# Path klassen

- [Java Path Documentation](https://docs.oracle.com/javase/8/docs/api/java/nio/file/Path.html)
- [Java Path Tutorial](https://www.baeldung.com/java-nio-2-path)
- 