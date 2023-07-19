---
title: Static
permalink: oop/atkomstmoderator/static
nav_order: 8
parent: Åtkomstmoderator
grand_parent: Objektorienterad programmering (OOP)
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
available: Java Java
codelanguage: C#
id: 507a847c-b7af-4357-9946-7bc110f26aeb
mermaid: true
school: https://campus.molndal.se/yh
---

# Static

En static är en åtkomstmodifikator som gör att en klassmedlem tillhör klassen och inte objektet.

<details open markdown="block">
<summary>
Innehållsförteckning
</summary>
{: .text-delta }

1. TOC
{:toc}

</details>

## Beskrivning

Vi kan använda static för att göra en klassmedlem tillhör klassen och inte objektet. Detta är användbart om vi vill dela data mellan olika klasser utan att behöva skapa flera instanser av en klass.

När koden kompileras kommer alla statiska medlemmar att tilldelas ett gemensamt minnesutrymme som delas av alla instanser av klassen. Detta gör att vi kan dela data mellan olika klasser utan att behöva skapa flera instanser av en klass. Detta är användbart om vi vill dela data mellan olika klasser utan att behöva skapa flera instanser av en klass.

<div class="mermaid">
mindmap
    root((Minnet))
        Instanser av klasser
            Instansvariabler
            Instansmetoder
        Statiskt
            Statiska variabler
            Statiska metoder
</div>

I detta diagram representerar "Minne" den allmänna minnesplatsen där programmet körs.

- `Instanser av klasser` representerar alla instanser av klasser som skapas under körningen.
- `Statiskt` representerar alla statiska variabler och metoder som skapas under körningen.

Observera att diagrammet bara visar en förenklad representation av hur en statisk metod och instansvariabler lagras i minnet vid kompileringen. Det kan finnas fler faktorer och detaljer som påverkar minnesorganisationen beroende på den specifika implementationen och miljön där programmet körs.

Hoppas att detta diagram hjälper till att illustrera hur en statisk metod läggs i minnet! Låt mig veta om du har fler frågor.

## Exempel

```java
public class UserSettings {
    public static String UserName;
    public static int Password;
    public static boolean DarkMode = true;
}
```

I detta exempel har vi en klass som heter `UserSettings`. Vi har också tre statiska egenskaper: `UserName`, `Password` och `DarkMode`. Dessa egenskaper är tillgängliga för alla klasser i samma projekt. Men om en annan klass i ett annat projekt länkar till detta projekt kommer de inte att kunna använda `UserSettings`-klassen.

Det är viktigt att notera att i Java kan vi inte ha statiska egenskaper med automatisk implementering som i C#. Istället måste vi använda publika statiska variabler och få tillgång till dem direkt genom klassnamnet.

För att använda `UserSettings`-klassen kan vi tilldela värden till de statiska egenskaperna innan vi använder dem:

```java
UserSettings.UserName = "JohnDoe";
UserSettings.Password = 123456;
UserSettings.DarkMode = true;
```

Och sedan kan vi använda dessa värden i andra delar av koden:

```java
System.out.println("Användarnamn: " + UserSettings.UserName);
System.out.println("Lösenord: " + UserSettings.Password);
System.out.println("Mörkt läge: " + UserSettings.DarkMode);
```

Detta ger oss möjligheten att dela data mellan olika klasser utan att behöva skapa flera instanser av `UserSettings`-klassen. Vi kan också ändra värdena i `UserSettings`-klassen och ha tillgång till de uppdaterade värdena överallt där vi använder klassen.

Detta är bara en av många användningar av `static` i Java. Det kan också användas för att skapa statiska metoder och block, vilket vi kommer att utforska i andra artiklar.

## Obligatorisk Dad-joke

Varför var den statiska metoden så dålig på att socialisera?

För att den aldrig kunde få någon att "dynamiskt" intressera sig för den! 😔