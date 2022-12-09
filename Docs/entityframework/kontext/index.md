---
title: Kontext
author: Marcus Medina
date: 2022-11-19 02:33
lang_supported: ["csharp","java"]
permalink: entityframework/kontext
tags: ["entityframework","kontext"]
categories: ["Entity Framework","Entityframework","Kontext"]
parent: Entity Framework
layout: default
has_children: true
isverified: true
nav_order: 2
---
# Kontext

En databas kontext är en klass som ärver från DbContext. Denna klass används för att kommunicera med databasen. Detta görs genom att använda Entity Framework Core.
<details open markdown="block">
  <summary>
    Innehållsförteckning
  </summary>
  {: .text-delta }

1. TOC
{:toc}

</details>

*Filen editerades senast 2022-12-09*
## Beskrivning

DBContext innehåller en samling av entiteter. En entitet är en klass som representerar en tabell i databasen. En entitet innehåller egenskaper som representerar kolumnerna i tabellen.

## Skapa en kontext för SQL-Server

## Skapa en kontext för SQLite

```csharp
public class MyDbContext : DbContext
{
    string connString= "Data Source=MyDatabase.db";
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlite(connString);
    }
    public DbSet<Blog> Blogs { get; set; }
    public DbSet<Post> Posts { get; set; }
}
```

## Skapa en kontext för MySQL (med Pomelo)

```csharp
public class MyDbContext : DbContext
{
    string connString= "Server=localhost;Database=MyDatabase;User Id=sa;Password=Password123;";
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
      var version = new MySqlServerVersion(new Version(8, 0, 21)); // Sätt senaste versionen av MySQL
      optionsBuilder.UseMySql(connString, version);
    }
    public DbSet<Blog> Blogs { get; set; }
    public DbSet<Post> Posts { get; set; }
}
```
