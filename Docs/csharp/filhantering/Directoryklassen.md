---
title: Directory klassen
author: Marcus Medina
date: 2022-11-20 03:49
lang_supported: ["csharp","java"]
permalink: csharp/filhantering/directoryklassen
tags: ["csharp","directory,klassen","filhantering"]
categories: ["Csharp","Filhantering"]
parent: Filhantering
layout: default
isverified: true
nav_order: 2
---
# Directory klassen

Directory klassen används för att hantera filer och mappar.
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

I System.IO finns Directory klassen, den ger oss verktyg för att hantera mappar.
- **CreateDirectory** - Skapar en mapp.
- **Delete** - Tar bort en mapp.
- **Exists** - Kollar om en mapp existerar.
- **GetDirectories** - Hämtar alla mappar i en mapp.
- **GetFiles** - Hämtar alla filer i en mapp.
- **GetFileSystemEntries** - Hämtar alla filer och mappar i en mapp.
- **Move** - Flyttar en mapp.
- **SetCurrentDirectory** - Sätter den aktuella mappen.

## Exempel
