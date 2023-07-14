---
title: Tabeller
permalink: sql/tabeller
nav_order: 2
parent: SQL
author: Marcus Medina
date: 2022-11-16 08:38
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: SQL
id: 720735fc-ab44-42e9-a855-8628dd323964
school: https://campus.molndal.se/yh
---

# Tabeller

Tabeller är som ett rutnät av data som lagras i en databas. Varje tabell har en eller flera kolumner, och varje rad i tabellen är en post. Varje post har en värde för varje kolumn. En tabell kan ha en primärnyckel, som är en kolumn som är unik för varje post. En tabell kan också ha en eller flera främmande nycklar, som är en kolumn som är kopplad till en annan tabell. 
Exemplen här nedanför är för MySQL. Det kan skilja på andra servrar {: warning}

<details open markdown="block">
<summary>
Innehållsförteckning
</summary>
{: .text-delta }

1. TOC
{:toc}

</details>

*Filen editerades senast 2022-12-09*
### Skapa en tabell om den inte finns

Här skapar vi en tabell med namnet `users` och tre kolumner: `id`, `name` och `email`.

```sql
CREATE TABLE IF NOT EXISTS users (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
email VARCHAR(50)
);
```

### Lägg till en kolumn

```sql
ALTER TABLE users ADD COLUMN age INT(3);
```

### Ta bort en kolumn

```sql
ALTER TABLE users DROP COLUMN age;
```

## Referenser

### Lägg till en kolumn och gör den till en ForeignKey

Vi skapar en länk till en annan tabell. I detta fall till tabellen `cars` och kolumnen `CarId`.

```sql
ALTER TABLE users ADD COLUMN CarId INT(6) UNSIGNED;
ALTER TABLE users ADD FOREIGN KEY (CarId) REFERENCES cars(CarId);
```

## Ta bort en ForeignKey

Vi tar bort referensen till Cars.CarId

```sql
ALTER TABLE users DROP FOREIGN KEY users_ibfk_1;
```

users_ibfk_1 är den första ForeignKey som finns i tabellen users.

## Skapa en tabell med en ForeignKey

```sql
CREATE TABLE IF NOT EXISTS cars (
CarId INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Model VARCHAR(30) NOT NULL,
Brand VARCHAR(50),
UserId INT(6) UNSIGNED,
FOREIGN KEY (UserId) REFERENCES users(id)
);
```

## Skapa en tabell med en ForeignKey och en primärnyckel

```sql
CREATE TABLE IF NOT EXISTS cars (
CarId INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Model VARCHAR(30) NOT NULL,
Brand VARCHAR(50),
UserId INT(6) UNSIGNED,
PRIMARY KEY (CarId, UserId),
FOREIGN KEY (UserId) REFERENCES users(id)
);
```

## Referenser

- [W3Schools](https://www.w3schools.com/sql/sql_foreignkey.asp)
- [MySQL](https://dev.mysql.com/doc/refman/8.0/en/create-table-foreign-keys.html)