---
title: Constraints
author: Marcus Medina
date: 2022-11-16 08:38
lang_supported: ["csharp","java"]
permalink: sql/constraints
tags: ["[constraints","sql"]
categories: ["[Constraints","Sql"]
layout: default
isverified: true
nav_order: 7
---
# Constraints

SQL-Constraints är ett sätt att begränsa datan i en tabell. Det finns två typer av constraints, primary key och foreign key. Primary key är en constraint som gör att en kolumn i en tabell kan ha unika värden. Foreign key är en constraint som gör att en kolumn i en tabell kan ha värden som finns i en annan tabell.
<details open markdown="block">
  <summary>
    Innehållsförteckning
  </summary>
  {: .text-delta }

1. TOC
{:toc}

</details>

*Filen editerades senast 2022-12-09*
## Primary Key

Primary Key är det värde som är unikt för varje rad i en tabell. Det är det värde som används för att identifiera en rad i en tabell. Det är också det värde som används för att koppla ihop tabeller med varandra. Det är inte möjligt att ha fler än en primary key i en tabell. Det är också inte möjligt att ha en primary key som är null. Det är också möjligt att ha en primary key som är en kombination av flera kolumner.

## Foreign Key

Foreign key är ett värde som finns i en tabell som är kopplat till ett värde i en annan tabell. Det är det värde som används för att koppla ihop tabeller med varandra. Det är inte möjligt att ha fler än en foreign key i en tabell. Det är också inte möjligt att ha en foreign key som är null. Det är också möjligt att ha en foreign key som är en kombination av flera kolumner.

## Exempel

```sql
CREATE TABLE Person (
    PersonID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255),
    PRIMARY KEY (PersonID)
);
CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderDate date NOT NULL,
    PersonID int NOT NULL,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
);
```

Man använder Primary key för att identifiera en rad i en tabell, och Foreign key för att koppla ihop tabeller med varandra.

## Exempel på hur man kopplar ihop tabellerna

```sql
INSERT INTO Person (PersonID, LastName, FirstName, Address, City)
VALUES (1, 'Peter', 'Petersson', 'St Petersgatan 1', 'Peterstad');
INSERT INTO Orders (OrderID, OrderDate, PersonID)
VALUES (1, '2021-01-01', 1);
```

och vi kan sedan hämta ut informationen från båda tabellerna med följande kod:

```sql
SELECT * FROM Person
INNER JOIN Orders ON Person.PersonID = Orders.PersonID;
```

## Referenser

[SQL Constraints](https://www.w3schools.com/sql/sql_constraints.asp)
