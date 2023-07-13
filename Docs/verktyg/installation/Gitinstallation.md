---
author: Marcus Medina
title: Gitinstallation
nav_order: 2
parent: Installation
grand_parent: Verktyg
permalink: verktyg/installation/Gitinstallation
date: 2023-06-17 12:56:23
layout: default
id: a0cf0609-6aaa-4adb-b1be-e604c053e830
codelanguage: Java
order: 9999
updated: 2023-06-17 12:56:23
category: ["installation"]
company: Campus Mölndal
author_url: https://marcusmedina.pro
author_github: https://github.com/marcusjobb
school: https://campus.molndal.se/yh
---

## Steg 1: Ladda ner Git

För att installera Git på Windows, klicka på länken [Installera Git](https://git-scm.com/) och följ sedan installationsinstruktionerna för Windows.

För att installera Git på Mac eller Linux, gå till [Git installation](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) och följ installationsinstruktionerna för din specifika operativsystem.

## Steg 2: Kontrollera installationen

Efter att du har installerat Git kan du kontrollera att installationen var framgångsrik genom att öppna konsolen (Command Prompt för Windows eller Terminal för Mac/Linux) och skriva följande kommando:

```shell
git --version
```

Om du ser en utskrift som visar Git-versionen betyder det att installationen var framgångsrik och att Git är korrekt installerat på din dator.

## Steg 3: Konfigurera Git

Innan du börjar använda Git är det viktigt att du konfigurerar ditt namn och din e-postadress. Detta är viktigt eftersom Git kommer att använda dessa uppgifter för att identifiera vem som gjorde vilka ändringar i källkoden.
Ange ditt namn med följande kommando:

```shell
git config --global user.name "Ditt Namn"
Ange din e-postadress med följande kommando:
git config --global user.email "din-email@example.com"
```

## Steg 4: Skapa ett Git-repositorium

Nu när du har installerat och konfigurerat Git kan du skapa ett nytt Git-repositorium för att hantera din källkod.
Gå till den mapp där du vill skapa ditt Git-repositorium och öppna konsolen (Command Prompt för Windows eller Terminal för Mac/Linux).

Använd följande kommando för att initialisera ett nytt Git-repositorium:

```shell
git init
```

## Steg 5: Lägg till och commita ändringar

Nu kan du börja lägga till och commita ändringar i ditt Git-repositorium. Här är några grundläggande kommandon du kan använda:

Lägger till din extra information i tabellen:

| **Åtgärd**                                | **Git-kommando**                         |
| ----------------------------------------- | ---------------------------------------- |
| Lägg till ändringar till Git-repositoriet | git add filnamn                          |
| Commita ändringar till Git-repositoriet   | git commit -m "Beskrivning av ändringar" |

## Steg 6: Hantera grenar

En av de kraftfulla funktionerna i Git är möjligheten att hantera grenar. Med grenar kan du arbeta med olika versioner av din källkod samtidigt utan att påverka den huvudsakliga koden.
Här är några grundläggande kommandon för att hantera grenar:

| **Åtgärd**             | **Git-kommando**        |
| ---------------------- | ----------------------- |
| Skapa en ny gren       | git branch ny-gren      |
| Byt till en annan gren | git checkout annan-gren |
| Slå ihop två grenar    | git merge gren-namn     |

## Steg 7: Hämta och pusha ändringar från och till fjärrrepository

För att hämta ändringar från en fjärrrepository (t.ex. GitHub) till ditt lokala Git-repositorium, använd följande kommando:
git pull fjärr-repository gren-namn
För att pusha ändringar från ditt lokala Git-repositorium till en fjärrrepository, använd följande kommando:

```shell
git push fjärr-repository gren-namn
```

Detta är bara en grundläggande introduktion till Git. Det finns mycket mer att lära sig om Git och dess funktioner. Du kan hitta mer information i Git-dokumentationen och genom att utforska olika Git-tutorials.