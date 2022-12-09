---
title: Mappar
author: Marcus Medina
date: 2022-11-16 08:38
lang_supported: ["csharp","java"]
permalink: csharp/filhantering/mappar
tags: ["csharp","filhantering","mappar,filer"]
categories: ["Csharp","Filhantering","Mappar"]
parent: Filhantering
grandparent: CSharp
layout: default
isverified: true
nav_order: 1
---
# Mappar

När man hämtar och sparar data måste man hålla koll på vilka mappar ens filer befinner sig i.
Det är aldrig rekommenderat att spara filer i den mapp som programmet ligger i. Delvis för att det är en säkerhetsrisk, men även för att det är en onödig risk att radera filer när man raderar programmet.
Använd hellre "My Documents" eller "Appdata" mappen. Dessa mappar finns på alla datorer och är lätt att hitta.
<details open markdown="block">
  <summary>
    Innehållsförteckning
  </summary>
  {: .text-delta }

1. TOC
{:toc}

</details>

*Filen editerades senast 2022-12-09*
## Specialmappar i datorn

Som standard har vi en profil och i den finns Desktop, Documents, Pictures, Downloads mm
För att få adressen till dessa mappar finns det en genväg i C#

### Projektmappen

När programmet startar i Visual Studio så finns det en genväg för att få adressen till projektmappen.

```csharp 
string projectPath=""; 

# if DEBUG

      projectPath = Directory.GetParent(Directory.GetCurrentDirectory()).Parent.Parent.FullName;
    Console.WriteLine("Mode=Debug"); 

# else

    projectPath=""; 
    Console.WriteLine("Mode=Release"); 

# endif

```

Man gör så för att när programmet körs ligger den under (projektmapp)\bin\Debug\net6.0\
* Genom att köra GetParent() hamnar vi på (projektmapp)\bin\Debug\
* Genom att läsa propertyn Parent hamnar vi på (projektmapp)\bin\
* Genom att läsa propertyn Parent igen hamnar vi på (projektmapp)\
och där hittar vi våra filer!
Debug raderna är för att kolla om programmet är i debugläge eller inte, om inte, så är den i releaseläge och då kan vi troligen inte ha någon sökväg till projektmappen.

## Korrekta filsökvägar

Om vi vill arbeta mot en mapp i My Documents som heter MySpecialFolder kan vi alltså göra såhär

```csharp
	string myDocuments = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
	string myFile = Path.Combine(myDocuments, "MySpecialFolder", "myFile.txt");
```

Path.Combine gör så att vi får en korrekt sökväg till filen oavsett om vi är på Windows eller Mac
- Windows: c:\users\(username)\Documents\MySpecialFolder\myFile.txt
- Linux : /home/(username)/Documents/MySpecialFolder/myFile.txt
- Mac : /Users/(username)/Documents/MySpecialFolder/myFile.txt

## Kolla om en mapp finns

För att kontroller om en mapp finns gör du enkelt såhär

```csharp
	string myDocuments = Environment.GetFolderPath(Environment.SpecialFolder.MyDesktop);
	string myFile = Path.Combine(myDocuments, "Viktigt");
	if (Directory.Exists(myFile))
	{
		// Mappen finns
	}
	else
	{
		// Mappen finns inte, skapa den
    Directory.CreateDirectory(myFile);
	}
```

## Skapa en mapp

```csharp
	string myDocuments = Environment.GetFolderPath(Environment.SpecialFolder.MyDesktop);
	string myFile = Path.Combine(myDocuments, "Viktigt");
	Directory.CreateDirectory(myFile);
```

## Radera en mapp

```csharp
  string myDocuments = Environment.GetFolderPath(Environment.SpecialFolder.MyDesktop);
  string myFolder = Path.Combine(myDocuments, "Viktigt");
  if (Directory.Exists(myFolder))
  {
    Directory.Delete(myFolder);
  }
```

## Kodförklaring

### Environment.GetFolderPath

Environment.GetFolderPath är en statisk metod som finns i System.Environment klassen. Den tar in en Environment.SpecialFolder som parameter och returnerar en sträng med sökvägen till den mappen.

### Environment.SpecialFolder

Environment.SpecialFolder är en enum som innehåller alla specialmappar som finns i datorn. Det finns även en egen mapp för varje användare som heter UserProfile.

### Path.Combine

Path.Combine är en statisk metod som finns i System.IO.Path klassen. Den tar in en sträng som parameter och returnerar en sträng med sökvägen till den mappen.

### Directory.Exists

Directory.Exists är en statisk metod som finns i System.IO.Directory klassen. Den tar in en sträng som parameter och returnerar en bool som säger om mappen finns eller inte.

### Directory.CreateDirectory

Directory.CreateDirectory är en statisk metod som finns i System.IO.Directory klassen. Den tar in en sträng som parameter och skapar en mapp med den sökvägen.

### Directory.Delete

Directory.Delete är en statisk metod som finns i System.IO.Directory klassen. Den tar in en sträng som parameter och raderar mappen med den sökvägen.
