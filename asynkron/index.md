---
title: Asynkron
permalink: asynkron/index
nav_order: 19
parent: Home
author: Marcus Medina
date: 2022-11-28 10:23
layout: home
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
available: Java Java
codelanguage: C#
enhance: false
has_children: true
id: 1e86d3a3-ce3e-4d5e-a261-143930f38baf
school: https://campus.molndal.se/yh
---

# Asynkron

Asynkrona metoder är metoder som inte blockerar tråden som kör metoden. Detta gör det möjligt för oss att köra flera metoder samtidigt och förbättra applikationens responsivitet.

## TL;DR

Asynkrona metoder gör det möjligt att köra flera metoder samtidigt och förbättra applikationens responsivitet genom att inte blockera tråden.

## När du läst detta ska du kunna

- Förstå vad asynkrona metoder är och hur de fungerar.
- Veta när det är lämpligt att använda asynkrona metoder.
- Kunna använda asynkrona metoder i Java.

## Introduktion

I vissa situationer kan det vara nödvändigt att köra flera metoder samtidigt i en applikation. Det kan handla om att kommunicera med andra system och API:er eller att hantera tunga beräkningar. Traditionellt sett skulle sådana metoder blockera huvudtråden i applikationen och göra den otillgänglig för andra operationer tills den aktuella metoden är klar. Detta kan resultera i en långsam och ineffektiv användarupplevelse.
För att undvika detta och göra applikationen mer responsiv kan man använda sig av asynkrona metoder.

## Beskrivning

Asynkrona metoder i Java gör det möjligt att utföra operationer utan att blockera tråden som kör metoden. Istället för att vänta på att en operation är klar innan man går vidare till nästa, kan man använda nyckelordet `Runnable` tillsammans med `Thread` för att ange att en metod ska köras asynkront.
När en metod är markerad som `Runnable` kommer den att returnera ett `Thread`-objekt som representerar den asynkrona operationen. När man använder `Thread` för att vänta på att en asynkron operation är klar, kommer tråden som kör metoden att släppas och andra operationer kan köras samtidigt.

## När ska man använda asynkrona metoder?

Asynkrona metoder är användbara när man vill förbättra applikationens responsivitet och prestanda. De är också användbara när man vill köra flera operationer samtidigt, som att kommunicera med andra system eller hantera tunga beräkningar.

## Sammanfattning

Asynkrona metoder är ett användbart verktyg för att förbättra applikationens responsivitet och prestanda. De gör det möjligt att köra flera metoder samtidigt och blockera inte tråden som kör metoden. I Java kan man använda nyckelordet `Runnable` tillsammans med `Thread` för att ange att en metod ska köras asynkront.3. **Kodförenkling**: Asynkrona metoder kan göra koden mer läsbar och förenkla kodstrukturen.

## Java

Vanligtvis används asynkrona metoder när man inte vet hur lång tid en operation kommer att ta, till exempel vid kommunikation över nätverk eller när man arbetar med stora datamängder. Genom att köra sådana operationer asynkront kan man göra applikationen mer responsiv och tillåta att andra operationer utförs parallellt.

Det är viktigt att notera några viktiga punkter när man använder asynkrona metoder:

- En asynkron metod måste alltid returnera antingen en `Future` eller en `Future<T>`. Detta är för att kunna köra flera metoder samtidigt.
- Asynkrona metoder kan inte ha en `void`-returtyp. Istället bör de returnera en `Future` om inget värde behövs eller en `Future<T>` om det finns ett returvärde.
- Asynkrona metoder kan inte ha `out`- eller `ref`-parametrar.
- Asynkrona metoder kan inte ha parametrar som är av typen `varargs`.

## Fördelar

Användningen av asynkrona metoder kan ge flera fördelar i en applikation:

1. **Responsivitet**: Genom att använda asynkrona metoder kan man undvika att blockera huvudtråden i applikationen och ge en mer responsiv användarupplevelse.
2. **Parallellism**: Genom att köra flera metoder samtidigt kan man utnyttja flera processorkärnor och därmed förbättra prestanda och genomströmning.
3. **Kodförenkling**: Asynkrona metoder kan göra koden mer läsbar och förenkla kodstrukturen.3. **Förbättrad skalbarhet**: Asynkrona metoder möjliggör parallell exekvering av operationer, vilket kan förbättra skalbarheten i en applikation och möjliggöra hantering av hög trafik eller arbetsbelastning.

## Begränsningar

Trots de fördelar som asynkrona metoder erbjuder finns det vissa begränsningar och överväganden att tänka på:

1. **Komplexitet**: Asynkron programmering kan vara mer komplext än synkron programmering, särskilt när det gäller att hantera fel och synchronisering mellan olika operationer.
2. **Ökad CPU-användning**: Asynkrona metoder kan resultera i en ökad CPU-användning på grund av överhead för att starta och hantera nya trådar eller arbetsenheter.
3. **Felhantering**: Det kan vara utmanande att hantera fel i asynkrona metoder, särskilt när flera operationer körs samtidigt. Korrekt felhantering och återställning är viktigt för att undvika buggar och felaktigt beteende.

## Användningsområden

Asynkrona metoder används i olika situationer och applikationsområden:

1. **Webbapplikationer**: Vid kommunikation med webbtjänster och API:er kan asynkrona metoder användas för att göra anrop och hämta data på ett effektivt sätt utan att blockera huvudtråden.
2. **Databashantering**: Asynkrona metoder kan användas vid databashantering för att parallellt hämta och uppdatera data från flera källor samtidigt.Asynkrona metoder är ett användbart verktyg för att förbättra prestanda och responsivitet i applikationer som hanterar flera anrop samtidigt.

## Exempelkod - Asynkrona anrop (Java)

Här är ett exempel på hur man kan använda asynkrona metoder i Java:

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.CompletableFuture;

public class Main {
    public static CompletableFuture<String> getAsync(String url) {
        // Starta en ny tråd och exekvera GET-begäran
        return CompletableFuture.supplyAsync(() -> {
            try {
                // Skapa en URL-anslutning till webbplatsen
                URL website = new URL(url);
                // Öppna anslutningen
                URLConnection connection = website.openConnection();
                // Skapa en BufferedReader för att läsa svaret
                BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                // Läs svaret från anslutningen
                StringBuilder response = new StringBuilder();

                String inputLine;
                // Läs varje rad från svaret
                while ((inputLine = in.readLine()) != null)
                    response.append(inputLine);
                in.close();
                // Returnera svaret som en sträng
                return response.toString();
            } catch (IOException e) {
                // Hantera eventuella IOExceptions
                e.printStackTrace();
                return null;
            }
        });
    }

    public static void main(String[] args) {
        // Utför en asynkron GET-begäran till "https://www.google.com"
        CompletableFuture<String> result = getAsync("https://www.google.com");
        try {
            // Vänta på att resultatet ska bli tillgängligt
            System.out.println(result.get());
        } catch (Exception e) {
            // Hantera eventuella undantag
            e.printStackTrace();
        }
    }
}
```

Här är förklaringar till vad varje del av koden gör:

1. Importera nödvändiga klasser från Java API.
2. Skapa en klass `Main`.
3. Definiera `getAsync`-metoden som returnerar en `CompletableFuture` som innehåller resultatet av en asynkron HTTP GET-begäran.
4. Anropa `CompletableFuture.supplyAsync` för att starta en ny tråd och exekvera GET-begäran.
5. Inuti den nya tråden, försök att utföra GET-begäran.
6. Skapa en `URL`-instans baserat på den angivna URL-strängen.
7. Öppna en anslutning (`URLConnection`) till webbplatsen.
8. Skapa en `BufferedReader` för att läsa svaret från anslutningen.
9. Skapa en `StringBuilder` för att bygga upp hela svaret rad för rad.
10. Läs varje rad från svaret och lägg till den i `response`-objektet.
11. Stäng `BufferedReader`.
12. Returnera det kompletta svaret som en sträng.
13. Hantera eventuella `IOExceptions` genom att skriva ut felmeddelandet och returnera `null`.
14. Definiera `main`-metoden som startpunkt för programmet.
15. Anropa `getAsync`-metoden för att utföra en asynkron GET-begäran till "https://www.google.com".
16. Anropa `result.get()` för att vänta på att resultatet av GET-begäran ska vara tillgängligt.
17. Skriv ut resultatet till konsolen.
18. Hantera eventuella undantag genom att skriva ut felmeddelandet.```

I exemplet ovan definieras en asynkron metod `getAsync` som hämtar data från en given URL. Metoden använder `CompletableFuture` för att göra ett asynkront HTTP-anrop och returnerar innehållet som en sträng.
I `main`-metoden anropas `getAsync` och resultatet skrivs ut på konsolen.

## Slutsats

Asynkrona metoder är ett användbart verktyg för att förbättra prestanda och responsivitet i applikationer som hanterar flera anrop samtidigt.
Asynkrona metoder är ett kraftfullt verktyg för att göra applikationer mer responsiva och effektiva. Genom att köra flera metoder samtidigt kan man förbättra prestanda och användarupplevelse. Det är viktigt att använda asynkrona metoder på rätt sätt och vara medveten om deras begränsningar och överväganden. Med rätt användning kan asynkron programmering vara ett värdefullt verktyg i utvecklingen av moderna applikationer.

## Termtabell

- **Asynkrona metoder**: Metoder som inte blockerar tråden och tillåter körsel av flera metoder samtidigt.
- **Responsivitet**: Förmågan hos en applikation att snabbt svara på användarinteraktioner och andra händelser.
- **Parallellism**: Exekvering av flera operationer samtidigt för att utnyttja flera processorkärnor och förbättra prestanda.
- **Skalbarhet**: Förmågan hos en applikation att hantera en ökad arbetsbelastning och trafik utan att försämra prestanda och responsivitet.

## Obligatorisk Dad-joke

Varför gillar programmerare att arbeta med asynkrona metoder?

För att de älskar att "vänta" på spänning!