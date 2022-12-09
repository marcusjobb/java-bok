---
title: Plugins
author: Marcus Medina
date: 2022-11-20 01:27
lang_supported: ["csharp","java"]
permalink: csharp/polymorfism/interfaces/plugins
tags: ["csharp","interfaces","plugins","polymorfism"]
categories: ["Csharp","Interfaces","Polymorfism"]
parent: Interfaces
grandparent: Polymorfism
layout: default
isverified: true
nav_order: 9
---
# Exempel

Ett pluginsystem för att lägga till nya funktioner till en applikation.
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

Vi ska göra ett litet program som läser av DLL filer och exekverar dem, så att vi kan lägga till nya funktioner till programmet utan att behöva bygga om det.

## Exempel

För detta exempel behöver vi tre projekt som ska finnas i samma solution.

### Projekt: PluginTemplate

Skapa ett projekt kallad PluginTemplate och lägg till en klass kallad PluginBase.
Projektet ska vara ett klassbibliotek och inte en konsolapplikation.
Vi skapar ett interface som ska identifiera plugins

### Projekt: PluginManager

Skapa ett projekt som du kallar PluginManager eller PluginRunner eller MyAwesomeProjekt eller vad du vill.
I denna ska du ha ett projektreferens till Pluginbase.
Projektet ska vara en konsolapplikation.

```csharp
public class PluginManager 
{
    private string _folder;
    // Lista av plugins tillgängliga
    public List<Plugin> Plugins { get; set; }
    // Konstruktor
    public PluginManager(string folder)
    {
        _folder = folder;
        Plugins = new List<Plugin>();
        LoadPlugins();
    }
    // Rensa listan med plugins för att frigöra minnet
    public void Dispose()
    {
        Plugins.Clear();
    }
    // Kör vald plugin, returnerar true om pluginen exekverades
    public bool Execute(int index)
    {
        if(index >= 0 && index < Plugins.Count)
        {
            Plugins[index].Execute();
            return true;
        }
        else
        {
            return false;
        }
    }
    // Kör alla plugins!
    public void ExecuteAll()
    {
        foreach(var plugin in Plugins)
        {
            plugin.Execute();
        }
    }
    // Ladda alla plugins från angiven mapp
    private void LoadPlugins()
    {
        var folder = Path.GetFullPath(_folder);
        foreach(var file in Directory.GetFiles(folder, "*.dll",SearchOption.AllDirectories))
        {
            try
            {
                // Ladda DLL filen som ett assembly för att kunna läsa av typinformationen
                var assembly = Assembly.LoadFile(file);
                // Loopa igenom alla typer i assemblyt
                foreach(var type in assembly.GetTypes())
                {
                    // Om typen implementerar PluginBase så är det en plugin
                    if(type.GetInterface("PluginTemplate.PluginBase") != null)
                    {
                        // create instance of plugin
                        var plugin = (Plugin)Activator.CreateInstance(type);
                        Plugins.Add(plugin);
                        // I vanliga fall skulle man kört break, men vi väljer 
                        // att fortsätta för att visa att det går att ha flera
                        // plugins i samma DLL fil
                    }
                }
            }
            catch(Exception ex)
            {
                Debug.WriteLine(ex.Message);
            }
        }
    }
}
public static class Program
{
    public static void Main(string[] args)
    {
        // Skriv in mappen du vill ha dina plugins i
        // Kopiera dina plugins till denna mapp
        var pluginManager = new PluginManager(@"C:\Plugins");
        // Visa lista med plugins
        foreach (var plugin in pluginManager)
        {
            Console.WriteLine($"{plugin.Name} - {plugin.Description} - {plugin.Version}");
        }
        Console.WriteLine("Vilken plugin vill du köra?");
        string input = Console.ReadLine();
        if (int.TryParse(input, out int index))
        {
            if (!pluginManager.Execute(index))
            {
                Console.WriteLine("Felaktigt index");
            }
        }
        else
        {
            Console.WriteLine("Felaktigt index");
        }
    }
}
```

### Projekt: My Plugin

Nu kan vi börja skapa plugins. När du gjort det så ska du lägga till ett projektreferens till PluginTemplate.
Projektet ska vara ett klassbibliotek och inte en konsolapplikation.

```csharp
using PluginTemplate;
public class MyPlugin : PluginBase
{
    public string Name { get => "My cool plugin"; }
    public string Description { get => "This is a cool plugin"; }
    public string Version { get => "Version 1.0.0"; }
    public void Execute() 
    {
        Console.WriteLine("Hello Plugin world!");
    }
}
```

## Källor

[https://www.c-sharpcorner.com/article/creating-a-plugin-system-in-c-sharp/](https://www.c-sharpcorner.com/article/creating-a-plugin-system-in-c-sharp/)
[https://www.codeproject.com/Articles/11805/Creating-a-Plugin-System-in-C](https://www.codeproject.com/Articles/11805/Creating-a-Plugin-System-in-C)
[https://www.codeproject.com/Articles/11805/Creating-a-Plugin-System-in-C](https://www.codeproject.com/Articles/11805/Creating-a-Plugin-System-in-C)
