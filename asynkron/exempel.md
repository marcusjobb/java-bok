---
title: Exempel
permalink: asynkron/exempel
nav_order: 1
parent: Asynkron
grand_parent: Home
author: Marcus Medina
date: 2022-11-28 10:23
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
id: f04ed4d1-583e-4ec2-961d-c08706401c64
school: https://campus.molndal.se/yh
---

# Exempel

En artikel som utforskar hur man skapar en metod för asynkron sökning i filer, vilket möjliggör effektivt sökande efter specifik text i en mapp.

## När du läst detta ska du kunna

- Förstå konceptet med asynkrona metoder och dess fördelar.
- Skapa en asynkron metod för att söka efter text i filer asynkront.
- Använda CompletableFuture i Java för att hantera asynkrona operationer.
- Förstå termer som responsivitet, parallellism och skalbarhet.

## Introduktion

I den här artikeln ska vi utforska ett coolt exempel där vi skapar en metod som gör det möjligt för oss att söka igenom filer i en mapp och returnera en lista med filer som innehåller en specifik text. Genom att använda asynkrona metoder i Java kommer vi att kunna köra flera sökoperationer samtidigt, vilket effektiviserar vår sökning och gör den mer responsiv.

## Asynkrona metoder och dess fördelar

Asynkrona metoder i Java tillåter oss att utföra operationer parallellt utan att blockera huvudtråden. Detta betyder att vi kan köra flera metoder samtidigt och undvika att programmet blir trögt och långsamt när vi utför långvariga operationer. Genom att använda asynkrona metoder kan vi öka responsiviteten i våra applikationer och göra dem mer användarvänliga.

## Skapa asynkron metod för filersökning

Vi börjar med att skapa en metod som heter `searchFilesAsync`. Denna metod tar emot en sökväg till en mapp, ett sökmönster och den text vi vill söka efter i filerna. Genom att använda `Files.walk` får vi en ström av alla filer i den angivna sökvägen. Sedan skapar vi en lista med `CompletableFuture` som kommer att köra metoden `searchFileAsync` för varje fil asynkront.

## Använda CompletableFuture för hantering av asynkrona operationer

Genom att använda `CompletableFuture.allOf` väntar vi på att alla asynkrona uppgifter (CompletableFuture) ska bli klara innan vi fortsätter. När alla uppgifter är klara samlar vi resultaten från varje `CompletableFuture` som inte är null och returnerar en lista med de filer som innehåller den sökta texten.

## Asynkron sökning i en enskild fil

För att söka efter den sökta texten i en enskild fil skapar vi metoden `searchFileAsync`. Denna metod tar emot sökvägen till filen och den sökta texten. Genom att använda `CompletableFuture.supplyAsync` startar vi en asynkron uppgift som kommer att läsa innehållet i filen och söka efter den angivna texten. Om texten hittas returnerar vi sökvägen till filen och radnumret där texten hittades, annars returnerar vi null.

## Använda vår sökmetod i Main-metoden

I vår `Main`-metod skapar vi en instans av `DirReader` och definierar sökvägen till vår mapp. Vi kör sedan metoden `searchFilesAsync` och sparar resultatet i en variabel. Slutligen skriver vi ut alla resultat i konsolen.

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
        // Skapa en ny instans av DirReader-klassen
        DirReader dir = new DirReader();

        // Hämta användarens hemkatalog
        String profile = System.getProperty("user.home");

        // Definiera sökvägen till källmappen
        String source = Paths.get(profile, "source").toString();

        // Sök efter alla .java-filer i källmappen asynkront
        List<String> result = dir.searchFilesAsync(source, "*.java", "asynkron").get();

        // Skriv ut resultaten till konsolen
        System.out.println(String.join(System.lineSeparator(), result));
    }
}

class DirReader {
    // Sök efter alla filer i en mapp som matchar ett angivet mönster och innehåller en viss text
    public CompletableFuture<List<String>> searchFilesAsync(String path, String searchPattern, String searchText) {
        try (Stream<Path> paths = Files.walk(Paths.get(path))) {
            // Skapa en lista med uppgifter för att söka varje fil asynkront
            List<CompletableFuture<String>> tasks = paths
                    .filter(Files::isRegularFile) // Endast vanliga filer beaktas
                    .filter(p -> p.getFileName().toString().endsWith(searchPattern)) // Endast filer som matchar sökmönstret beaktas
                    .map(p -> searchFileAsync(p.toString(), searchText)) // Sök i varje fil asynkront
                    .collect(Collectors.toList());

            // Vänta på att alla uppgifter ska slutföras och samla resultaten
            CompletableFuture<Void> allTasks = CompletableFuture.allOf(tasks.toArray(new CompletableFuture[tasks.size()]));
            return allTasks.thenApply(v -> tasks.stream()
                    .map(CompletableFuture::join)
                    .filter(x -> x != null)
                    .collect(Collectors.toList()));
        } catch (IOException e) {
            // Om ett fel inträffar, returnera ett misslyckat CompletableFuture med undantaget
            e.printStackTrace();
            return CompletableFuture.failedFuture(e);
        }
    }

    // Sök efter en given text i en enskild fil och returnera resultatet
    public CompletableFuture<String> searchFileAsync(String path, String searchText) {
        return CompletableFuture.supplyAsync(() -> {
            try {
                // Läs in alla rader i filen
                List<String> lines = Files.readAllLines(Paths.get(path));

                // Sök efter texten i filen
                int index = lines.indexOf(searchText);

                // Om texten hittas, returnera filens sökväg och radnummer
                return index >= 0 ? path + " - " + index : null;
            } catch (IOException e) {
                // Om ett fel inträffar, returnera null
                e.printStackTrace();
                return null;
            }
        });
    }
}
```

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

Genom att använda asynkrona metoder kan vi skapa mer responsiva och effektiva applikationer. I vårt exempel har vi sett hur vi kan söka igenom filer asynkront och samtidigt undvika att blockera huvudtråden. Asynkron programmering är användbart för uppgifter som tar tid, som att söka igenom filer eller kommunicera med externa system. Genom att utnyttja asynkrona metoder kan vi skapa applikationer som är mer responsiva, effektiva och skalbara. Fortsätt koda med glädje och utforska de många möjligheterna med asynkron programmering!

## Termtabell

- **Asynkrona metoder**: Metoder som inte blockerar tråden och tillåter parallell exekvering av flera metoder samtidigt.
- **Responsivitet**: Förmågan hos en applikation att snabbt svara på användarinteraktioner och andra händelser.
- **Parallellism**: Exekvering av flera operationer samtidigt för att utnyttja flera processorkärnor och förbättra prestanda.
- **Skalbarhet**: Förmågan hos en applikation att hantera en ökad arbetsbelastning och trafik utan att försämra prestanda och responsivitet.

## Sista ordet

Det är verkligen fantastiskt att kunna använda asynkron programmering för att förbättra responsiviteten och effektiviteten i våra applikationer. Om du vill utforska ämnet mer eller hitta andra spännande aspekter av programmering, fortsätt att upptäcka och lära dig nya saker. Ha en fortsatt bra dag och lycka till med dina programmeringsprojekt!

## Obligatorisk Dad-joke

Varför kallas asynkrona metoder för "coola"?

För att de jobbar i sin egen "takt"!