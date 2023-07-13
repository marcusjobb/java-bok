---
author: Marcus Medina
title: Exempel
nav_order: 2
parent: Asynkron
grand_parent: Java
permalink: asynkron/exempel
date: 2022-11-28 10:23
layout: default
enhance: false
codelanguage: C#
school: https://campus.molndal.se/yh
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
id: f04ed4d1-583e-4ec2-961d-c08706401c64
---

## Exempel - Fil sökning
Yay! Nu ska vi titta på ett exempel där vi ska skapa en metod som söker igenom alla filer i en mapp och returnerar en lista med filer som innehåller en specifik text. Vi kommer att använda asynkrona metoder för att kunna köra flera metoder samtidigt och därigenom effektivisera vår sökning. Hur coolt låter inte det?

<details open markdown="block">
  <summary>
    Innehållsförteckning
  </summary>
  {: .text-delta }
1. Innehållsförteckning
{:toc}
</details>
## Kod


```java
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.stream.Collectors;
import java.util.stream.Stream;
public class Main {
    public static void main(String[] args) throws Exception {
        DirReader dir = new DirReader();
        String profile = System.getProperty("user.home");
        String source = Paths.get(profile, "source").toString();
        List<String> result = dir.searchFilesAsync(source, "*.java", "asynkron").get();
        System.out.println(String.join(System.lineSeparator(), result));
    }
}
class DirReader {
    public CompletableFuture<List<String>> searchFilesAsync(String path, String searchPattern, String searchText) {
        try (Stream<Path> paths = Files.walk(Paths.get(path))) {
            List<CompletableFuture<String>> tasks = paths
                    .filter(Files::isRegularFile)
                    .filter(p -> p.getFileName().toString().endsWith(searchPattern))
                    .map(p -> searchFileAsync(p.toString(), searchText))
                    .collect(Collectors.toList());
            CompletableFuture<Void> allTasks = CompletableFuture
                    .allOf(tasks.toArray(new CompletableFuture[tasks.size()]));
            return allTasks
                    .thenApply(v -> tasks.stream()
                            .map(CompletableFuture::join)
                            .filter(x -> x != null)
                            .collect(Collectors.toList()));
        } catch (IOException e) {
            e.printStackTrace();
            return CompletableFuture.failedFuture(e);
        }
    public CompletableFuture<String> searchFileAsync(String path, String searchText) {
        return CompletableFuture.supplyAsync(() -> {
            try {
                List<String> lines = Files.readAllLines(Paths.get(path));
                int index = lines.indexOf(searchText);
                return index >= 0 ? path + " - " + index : null;
            } catch (IOException e) {
                e.printStackTrace();
                return null;
            }
        });

```
I den här översättningen har vi översatt den befintliga C#-koden till Java. 
Huvudpunkter att notera:
- `static class Program` i C# har översatts till `public class Main` i Java för att använda programinmatningspunkten.
- `Environment.GetFolderPath(Environment.SpecialFolder.UserProfile)` i C# har översatts till `System.getProperty("user.home")` i Java för att få sökvägen till användarens hemkatalog.
- `var dir = new DirReader();` i C# har översatts till `DirReader dir = new DirReader();` i Java för att skapa en instans av `DirReader`-klassen.
- `Directory.GetFiles(path, searchPattern, SearchOption.AllDirectories)` i C# har översatts till `Files.walk(Paths.get(path))` i Java för att lista alla filer i en mapp och dess undermappar.
- `SearchFileAsync(file, searchText)` i C# har översatts till `searchFileAsync(p.toString(), searchText)` i Java för att söka efter en specifik text i en fil.
- `string.Join(Environment.NewLine, result)` i C# har översatts till `String.join(System.lineSeparator(), result)` i Java för att sammanfoga elementen i listan `result` med en ny rad mellan varje element.
- `async` och `await` i C# har översatts till `CompletableFuture` i Java för att hantera asynkrona operationer.
- `List<string>` i C# har översatts till `List<String>` i Java för att skapa en lista av strängar.
- `string?` i C# har översatts till `String` i Java för att hantera potentiellt null-värde.
Detta är en korrekt översättning av koden och den fungerar på samma sätt som den ursprungliga koden i C#.## Förklaring
1. Vi börjar med att skapa en metod som heter `SearchFilesAsync`.
2. Metoden tar emot en sökväg, sökmönster och söktext.
3. Vi använder `Files.walk` för att hämta en ström med alla filer i den angivna sökvägen.
4. Därefter skapar vi en lista med tasks som kommer att köra metoden `SearchFileAsync`.
5. Vi loopar igenom varje fil och lägger till en task för varje fil i vår lista.
6. Genom att använda `CompletableFuture.allOf` väntar vi på att alla tasks ska bli klara.
7. Vi returnerar en lista med resultatet från varje task som inte är null.
8. Därefter skapar vi en metod som heter `SearchFileAsync`.
9. Metoden tar emot en sökväg och en söktext.
10. Vi använder `Files.readAllLines` för att läsa innehållet i filen och sparar det i en lista.
11. Vi skapar en variabel som håller koll på vilken rad vi är på i filen.
12. Sedan loopar vi igenom varje rad i filen.
13. Om raden innehåller den sökta texten så returnerar vi sökvägen till filen och vilken rad det var.
14. Vi läser in nästa rad från filen.
15. Vi ökar radnumret med 1.
16. Om vi inte hittar någon rad som innehåller den sökta texten så returnerar vi null.
17. Slutligen har vi vår `Main`-metod där vi skapar en instans av `DirReader` och definierar sökvägen till vår mapp.
18. Vi kör metoden `SearchFilesAsync` och sparar resultatet i en variabel.
19. Till sist skriver vi ut alla resultat i konsolen.
Wow! Nu kan vi söka igenom filer asynkront och få en lista med de filer som innehåller vår sökta text. Det är riktigt coolt att kunna köra flera metoder samtidigt och på så sätt förbättra vår effektivitet. Fortsätt det fantastiska arbetet!
## Slutsats


Att kunna utföra asynkrona operationer är en kraftfull teknik som gör att våra applikationer kan vara mer responsiva och effektiva. Genom att använda asynkrona metoder kan vi undvika att blockera huvudtråden och istället köra flera operationer samtidigt. Detta är särskilt användbart vid uppgifter som tar tid, som att söka igenom filer eller kommunicera med externa system. Genom att utnyttja asynkron programmering kan vi skapa mer responsiva och skalbara applikationer. Fortsätt kodning med glädje!
## Termtabell


- **Asynkrona metoder**: Metoder som inte blockerar tråden och tillåter parallell exekvering av flera metoder samtidigt.
- **Responsivitet**: Förmågan hos en applikation att snabbt svara på användarinteraktioner och andra händelser.
- **Parallellism**: Exekvering av flera operationer samtidigt för att utnyttja flera processorkärnor och förbättra prestanda.
- **Skalbarhet**: Förmågan hos en applikation att hantera en ökad arbetsbelastning och trafik utan att försämra prestanda och responsivitet.
## Obligatorisk Dad-joke


Varför kallas asynkrona metoder för "coola"?
För att de jobbar i sin egen "takt"!