---
title: Entity Framework
author: Marcus Medina
date: 2022-11-17 08:59
lang_supported: ["csharp","java"]
permalink: entityframework
tags: ["entity,framework","entityframework"]
categories: ["Entity Framework","Entityframework"]
layout: default
has_children: true
isverified: true
nav_order: 4
---
# Entity Framework

Entity Framework är ett ORM (Object Relational Mapping) ramverk som används för att kommunicera med databasen. Detta görs genom att använda Entity Framework Core.
<details open markdown="block">
  <summary>
    Innehållsförteckning
  </summary>
  {: .text-delta }

1. TOC
{:toc}

</details>

*Filen editerades senast 2022-12-09*
### Entity Framework Core

## Installation

För att använda Entity Framework behöver vi Nugets. För att installera Nugets behöver vi först lägga till en Nuget källa. 
Tänk på att då .Net7 nyligen släppts så är inte alla nugets kompatibla med .Net7. Därför är det viktigt att använda rätt version av Entity Framework Core. För MySQL behöver vi använda 
* Pomelo Entity Framework Core MySQL Provider, senaste versionen
* Entity Framework Core Tools, version 6.0.11
{: warning }

### Entity Framework Core Tools Nuget

Vi installerar Nugeten genom att skriva följande i Console manager

```powershell
Install-Package Microsoft.EntityFrameworkCore.Tools
```

### Entity Framework Core Nuget för SQL-Server

och sedan lägger vi till nugets för specifika databaser

```powershell
Install-Package Microsoft.EntityFrameworkCore.SqlServer
```

### Entity Framework Core Nuget för SQLite

```powershell
Install-Package Microsoft.EntityFrameworkCore.Sqlite
```

## Entity Framework Core Nuget för MySQL

```powershell
Install-Package Pomelo.EntityFrameworkCore.MySql
```
