---
title: Exempel
author: Marcus Medina
date: 2022-11-20 01:27
lang_supported: ["csharp","java"]
permalink: csharp/polymorfism/abstraktaklasser/exempel
tags: ["abstraktaklasser","csharp","exempel","polymorfism"]
categories: ["Abstrakta Klasser","Abstraktaklasser","Csharp","Polymorfism"]
parent: Abstrakta klasser
layout: default
isverified: true
nav_order: 1
---
# Exempel

Vi ska skapa en abstrakt klass med abstrakta och virtuella metoder.
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

En abstrakt klass kan innehålla vanliga metoder, abstrakta och virtuella. 
Vi ska titta på hur det fungerar med dessa olika typer av metoder, genom att skapa en abstrakt klass för att hantera webbscrapping för olika sidor.
Vi använder följande nugets
-SixLabors.ImageSharp för att hantera grafik då .net libraryn inte är Mac kompatibel
-HtmlAgilityPack för att hantera html dokument

## Exempel

Nu ska vi göra en implementation av denna klass för att hämta innehållet från en specifik sida.
  ```csharp
  public class GetKittens : WebScraper
{
    public string DownloadKitten()
    {
        Scrape("https://www.pinterest.com/katesaidy/cute-kitten-pics/");
        var imgFolder = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);
        var filename = Path.Combine(imgFolder, "Daily kitten.jpg");
        if(File.Exists(filename)) 
            return filename;
        else 
            return "";
    }
    public override List<string> GetImages()
    {
        var imageUrls = new List<string>();
        // IMG SRC funkade inte på Pinterest så vi söker med regex istället
        // för att göra det mer genomskinnligt så overridar vi bara GetImages
        if(HtmlDocument != null)
        {
            var regex = new Regex(@"(['""])([^'""]+\.(jpg|png|bmp|gif))\1");
            var match = regex.Match(Html);
            while(match.Success)
            {
                Console.WriteLine(match.Groups[2].Value);
                imageUrls.Add(match.Groups[2].Value);
                match = match.NextMatch();
            }
        }
        return imageUrls;
    }
    // Här är scrape metoden som vi måste implementera
    public override void Scrape(string url)
    {
        Console.WriteLine("Downloading page");
        GetHtmlDocument(url);
        Console.WriteLine("Getting image list");
        var images = GetImages();
        Console.WriteLine("Removing crap images");
        images = images.Where(pic => !pic.Contains("/images/user/")).ToList();
        if(images.Count == 0) return;
        // get random image from list
        var random = new Random();
        Console.WriteLine("Selecting random image");
        var randomImage = images[random.Next(0, images.Count)];
        Console.WriteLine("Downloading image");
        Console.WriteLine(randomImage);
        var image = GetImage(randomImage);
        Console.WriteLine("Saving image");
        var imgFolder = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);
        var filename = Path.Combine(imgFolder, "Daily kitten.jpg");
        SaveImage(filename, image);
    }
}
```
