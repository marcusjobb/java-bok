---
author: Marcus Medina
title: SQL
nav_order: 24
parent: Home
permalink: sql/index
date: 2022-11-16 08:38
layout: default
school: https://campus.molndal.se/yh
id: 20b3bbb2-1e0d-4056-bca2-4d25ccef8421
codelanguage: SQL
author_url: https://marcusmedina.pro
has_children: true
enhance: false
author_github: https://github.com/marcusjobb
---

# SQL

SQL erbjuder många avancerade funktioner och kommandon för att hantera och manipulera data i databaser. Genom att lära dig SQL kan du få en djupare förståelse för databaser och hur man effektivt hanterar och analyserar data.

## Exempel

Låt oss titta på ett exempel där vi använder SQL för att skapa en databas och en tabell i SQL-Server.

```sql
CREATE DATABASE IF NOT EXISTS test;
USE test;

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
```
