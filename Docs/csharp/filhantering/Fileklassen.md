---
title: File klassen
author: Marcus Medina
date: 2022-11-20 03:49
lang_supported: ["csharp","java"]
permalink: csharp/filhantering/fileklassen
tags: ["csharp","file,klassen","filhantering"]
categories: ["Csharp","Filhantering"]
parent: Filhantering
layout: default
isverified: true
nav_order: 1
---
# File klassen

I File klassen finns metoder för att hantera filer.
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

File finns i System.IO.
Den innehåller bland annat följande metoder:
- **AppendAllText** - Lägger till text i en fil.
- **AppendText** - Lägger till text i en fil.
- **Copy** - Kopierar en fil.
- **Create** - Skapar en fil.
- **Delete** - Tar bort en fil.
- **Exists** - Kollar om en fil existerar.
- **Move** - Flyttar en fil.
- **Open** - Öppnar en fil.
- **OpenRead** - Öppnar en fil för läsning.
- **OpenText** - Öppnar en fil för läsning.
- **OpenWrite** - Öppnar en fil för skrivning.
- **ReadAllBytes** - Läser innehållet i en fil.
- **ReadAllLines** - Läser innehållet i en fil.
- **ReadAllText** - Läser innehållet i en fil.
- **ReadLines** - Läser innehållet i en fil.
- **WriteAllBytes** - Skriver till en fil.
- **WriteAllLines** - Skriver till en fil.
- **WriteAllText** - Skriver till en fil.

## Exempel

## Exempel 2

```csharp
public static class Program
{
  public static void Main()
  {
    var file="C:\\Temp\\test.txt";
    // Skapar en fil
    if (!File.Exists(file))
    {
      File.Create(file);
    }
    // Skriver till en fil
    using (var writer = File.AppendText(file))
    {
      writer.WriteLine("Hello World!");
    }
    // Läser innehållet i en fil
    var text = File.ReadAllText(file);
    Console.WriteLine(text);
    // Tar bort en fil
    File.Delete(file);
  }
}
```

## Exempel 3

```csharp
public static class Program
{
  public static void Main()
  {
    var file="C:\\Temp\\test.txt";
    // Skapar en fil
    if (!File.Exists(file))
    {
      File.Create(file);
    }
    // Skriver till en fil
    using (var writer = File.AppendText(file))
    {
      writer.WriteLine("Hello World!");
    }
    // Läser innehållet i en fil
    using (var reader = File.OpenText(file))
    {
      var text = reader.ReadToEnd();
      Console.WriteLine(text);
    }
    // Tar bort en fil
    File.Delete(file);
  }
}
```

## Exempel 4 - Arrays och listor

```csharp
public static class Program
{
  public static void Main()
  {
    var file="C:\\Temp\\test.txt";
    // Skapar en fil
    if (!File.Exists(file))
    {
      File.Create(file);
    }
    // Skriver till en fil
    var array = new string[] { "Hello", "World" };
    File.WriteAllLines(file, array);
    // Läser innehållet i en fil
    var text = File.ReadAllLines(file);
    foreach (var item in text)
    {
      Console.WriteLine(item);
    }
    // Tar bort en fil
    File.Delete(file);
  }
}
```

## Exempel 5 - Arrays och listor

```csharp
public static class Program
{
  public static void Main()
  {
    var file="C:\\Temp\\test.txt";
    // Skapar en fil
    if (!File.Exists(file))
    {
      File.Create(file);
    }
    // Skriver till en fil
    var array = new string[] { "Hello", "World" };
    File.WriteAllLines(file, array);
    // Läser innehållet i en fil
    var text = File.ReadAllLines(file);
    foreach (var item in text)
    {
      Console.WriteLine(item);
    }
    // Tar bort en fil
    File.Delete(file);
  }
}
```
