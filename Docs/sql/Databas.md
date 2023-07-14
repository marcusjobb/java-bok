---
title: Databaser
permalink: sql/databas
nav_order: 4
parent: SQL
author: Marcus Medina
date: 2022-11-16 08:38
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: SQL
id: 746d40c2-7cab-4bca-8dc7-4c2448016690
school: https://campus.molndal.se/yh
---

# Databaser

<details open markdown="block">
<summary>
Innehållsförteckning
</summary>
{: .text-delta }

1. TOC
{:toc}

</details>

*Filen editerades senast 2022-12-09*
### Skapa en databas

```sql
CREATE DATABASE databasnamn;
```

### Skapa en databas om den inte finns

```sql
CREATE DATABASE IF NOT EXISTS databasnamn;
```

### Ta bort en databas

Tänk på att backuppa först, annars är allt borta.{: warning}

```sql
DROP DATABASE databasnamn;
```

### Ändra namn på databasen

Farligt! Detta kan skapa problem om du har kopplat dig till databasen med ett program.{: warning}

```sql
ALTER DATABASE databasnamn RENAME TO nytt_databasnamn;
```