---
title: Mappar
permalink: filhantering/mappar
nav_order: 8
parent: Filhantering
grand_parent: Java
author: Marcus Medina
date: 2022-11-16 08:38
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
id: d9b6691e-809d-4120-a82c-9519704a9b13
school: https://campus.molndal.se/yh
---

# Mappar

I detta kodexempel använder vi klassen `File` från `java.io`-paketet för att kontrollera, skapa och radera mappar i Java-programmet.

```java
import java.io.File;

public class MapparExempel {
    public static void main(String[] args) {
        // Kontrollera om en mapp finns
        String mappSokvag = "C:\\exempel\\mapp";
        File mapp = new File(mappSokvag);
        if (mapp.exists()) {
            System.out.println("Mappen finns.");
        } else {
            System.out.println("Mappen finns inte.");
        }

        // Skapa en mapp
        String nyMappSokvag = "C:\\exempel\\ny_mapp";
        File nyMapp = new File(nyMappSokvag);
        if (!nyMapp.exists()) {
            if (nyMapp.mkdir()) {
                System.out.println("Mappen har skapats.");
            } else {
                System.out.println("Kunde inte skapa mappen.");
            }
        } else {
            System.out.println("Mappen finns redan.");
        }

        // Radera en mapp
        String raderaMappSokvag = "C:\\exempel\\att_radera";
        File raderaMapp = new File(raderaMappSokvag);
        if (raderaMapp.exists()) {
            if (raderaMapp.delete()) {
                System.out.println("Mappen har raderats.");
            } else {
                System.out.println("Kunde inte radera mappen.");
            }
        }
    }
}
```

I detta kodexempel utför vi följande operationer:

1. Kontrollerar om en mapp existerar genom att skapa en `File`-instans med sökvägen till mappen och använda `exists()`-metoden.
2. Skapar en ny mapp genom att skapa en `File`-instans med sökvägen till den nya mappen och använda `mkdir()`-metoden. Vi kontrollerar först om mappen redan finns med hjälp av `exists()`-metoden.
3. Raderar en mapp genom att skapa en `File`-instans med sökvägen till mappen och använda `delete()`-metoden. Vi kontrollerar först om mappen existerar med `exists()`-metoden.

Det är viktigt att vara försiktig när man arbetar med mappar och filer och att hantera eventuella fel eller undantag som kan uppstå. Det kan vara användbart att använda try-catch-block för att fånga och hantera eventuella undantag som genereras vid arbete med mappar och filer.

### Sammanfattning

I detta kodexempel har vi sett hur man kan arbeta med mappar i Java genom att använda `File`-klassen från `java.io`-paketet. Vi har utfört operationer som att kontrollera om en mapp existerar, skapa en ny mapp och radera en mapp. Genom att använda dessa metoder kan vi enkelt hantera mappar i våra Java-program.

Det är viktigt att vara försiktig när man arbetar med mappar och filer och att hantera eventuella fel eller undantag som kan uppstå. Det kan vara användbart att använda try-catch-block för att fånga och hantera eventuella undantag som genereras vid arbete med mappar och filer.

Jag hoppas att denna artikel har varit användbar och gett dig en bättre förståelse för hur man arbetar med mappar i Java. Om du har några frågor eller vill lära dig mer, tveka inte att utforska dokumentationen och resurserna från Oracle som jag har länkat till ovan. Ha kul med att organisera dina filer och mappar i dina Java-projekt!

**Källor**:

- [Oracle Docs - File Class](https://docs.oracle.com/en/java/javase/17/docs/api/java.base/java/io/File.html)

## Obligatorisk Dad-joke

Varför älskar mappar att gå på festivaler?

För att de alltid får chansen att "mappa" upp sig!