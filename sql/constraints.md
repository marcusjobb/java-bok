---
title: Constraints
permalink: sql/constraints
nav_order: 5
parent: SQL
grand_parent: Home
author: Marcus Medina
date: 2022-11-16 08:38
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: SQL
id: b8ce043d-e688-4b96-95be-1bf57592b5ad
school: https://campus.molndal.se/yh
---

# Constraints

Begränsningar i SQL för att säkerställa datan i tabeller

### Introduktion

Välkommen till Detta avsnitt om SQL-Constraints, ett kraftfullt verktyg för att begränsa datan
i en tabell. I SQL finns det två typer av constraints som vi ska utforska: Primary Key och
Foreign Key. Dessa constraints hjälper oss att säkerställa att tabellerna innehåller korrekt
och sammanhängande data. Låt oss ta en närmare titt på hur dessa constraints fungerar och
varför de är så viktiga inom SQL.

### TL;DR

SQL-Constraints är ett sätt att begränsa datan i en tabell för att säkerställa att den är
korrekt och sammanhängande. Det finns två typer av constraints: Primary Key, som används för
att identifiera unika rader i en tabell, och Foreign Key, som används för att koppla ihop
tabeller med varandra.

### När du läst detta ska du kunna

- Förstå och förklara vad SQL-Constraints är och deras relevans inom SQL.
- Diskutera användningen av Primary Key och Foreign Key för att säkerställa korrekt data i
  tabeller.
- Skapa tabeller med rätt constraints för att uppnå databasens integritet.
- Använda exempelkod för att koppla ihop tabeller och hämta data med hjälp av constraints.

### Vad är SQL-Constraints?

SQL-Constraints är ett verktyg inom SQL som används för att begränsa datan i en tabell på
olika sätt. Två viktiga typer av constraints är:

### Primary Key

Primary Key är ett unikt värde för varje rad i en tabell och används för att identifiera
varje rad på ett entydigt sätt. Det fungerar som en unik identifierare för varje post i
tabellen och används också för att koppla ihop tabeller genom relationer. I en tabell kan
det bara finnas en Primary Key och den kan inte ha ett NULL-värde.

### Foreign Key

Foreign Key är ett värde i en tabell som refererar till ett Primary Key-värde i en annan
tabell. Det används för att skapa relationer mellan tabeller och säkerställa referentiell
integritet. Precis som med Primary Key kan det bara finnas en Foreign Key i en tabell och
den kan inte vara NULL.

### Fördelar

Att använda SQL-Constraints har flera fördelar. Genom att använda Primary Key kan vi
säkerställa att varje rad i en tabell har en unik identifierare, vilket förenklar
datahanteringen och sökningar. Foreign Key gör det möjligt för oss att skapa relationer
mellan tabeller och utföra komplexa frågor som involverar data från flera tabeller
samtidigt.

### Begränsningar

Även om SQL-Constraints är kraftfulla har de också några begränsningar. Till exempel kan
det vara utmanande att hantera komplexa datastrukturer som kräver sammansatta Primary Keys
eller Foreign Keys. Dessutom kan felaktiga constraints orsaka problem med dataintegriteten
och leda till svårigheter vid uppdateringar eller borttagning av data.

### Exempelkod - Användning av Constraints

Låt oss titta på ett exempel där vi skapar två tabeller, Person och Orders, och använder
Primary Key och Foreign Key för att koppla ihop dem:

```sql
CREATE TABLE Person (
    PersonID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderDate date NOT NULL,
    PersonID int NOT NULL,
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
);
```

I detta exempel skapar vi en relation mellan Person och Orders genom att använda Foreign Key.
PersonID i Orders refererar till PersonID i Person-tabellen.

### Referenser

Vill du lära dig mer om SQL-Constraints? Kolla in
[SQL Constraints](https://www.w3schools.com/sql/sql_constraints.asp) för mer information och
exempel.

### Slutsats

Constraints är ett kraftfullt verktyg inom SQL som hjälper oss att säkerställa att datan i
våra tabeller är korrekt och sammanhängande. Genom att använda Primary Key och Foreign Key
kan vi skapa relationer mellan tabeller och effektivt hantera våra data. Så nästa gång du
designar en databas, se till att använda Constraints för att uppnå bästa möjliga
dataintegritet och prestanda! Happy coding! 😊