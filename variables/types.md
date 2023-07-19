---
title: Typer
permalink: variables/types
nav_order: 2
parent: Variabler
grand_parent: Home
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: Java
enhance: false
id: f6747b40-af22-4703-b891-37384d95e99e
school: https://campus.molndal.se/yh
---

# Typer

En typ är en klassificering av data som används för att bestämma vilken typ av värde en variabel kan lagra. I Java finns det olika typer av typer, inklusive primitiva typer och referenstyper.

## Primitiva typer

Här är en lista över några vanliga primitiva typer i Java tillsammans med deras beskrivning, minsta värde, högsta värde och storlek i minnet:

| Typ     | Beskrivning                            | Minsta               | Högsta                | Storlek |
| ------- | -------------------------------------- | -------------------- | --------------------- | ------- |
| boolean | Booleskt värde                         | false                | true                  | 1 byte  |
| char    | 16-bitars Unicode-tecken               | '\u0000'             | '\uFFFF'              | 2 byte  |
| byte    | 8-bitars heltal                        | -128                 | 127                   | 1 byte  |
| short   | 16-bitars heltal                       | -32768               | 32767                 | 2 byte  |
| int     | 32-bitars heltal                       | -2147483648          | 2147483647            | 4 byte  |
| long    | 64-bitars heltal                       | -9223372036854775808 | 9223372036854775807   | 8 byte  |
| float   | 32-bitars flyttal med enkels precision | 1.4E-45              | 3.4028235E+38         | 4 byte  |
| double  | 64-bitars flyttal med dubbel precision | 4.9E-324             | 1.79769313486232E+308 | 8 byte  |

Observera att storlekarna som anges ovan är standardstorlekar och kan variera beroende på implementationen och plattformen.

## Referenstyper

Utöver de primitiva typerna har Java också referenstyper, som är typer som lagrar referenser till objekt. Här är några exempel på vanliga referenstyper i Java:

- `String`: En klass för att hantera textsträngar.
- `Array`: En typ för att skapa och hantera arrayer av andra typer.
- `Class`: En klass som representerar en typ vid körningstid.
- `Interface`: En typ som definierar en samling metoder som en klass kan implementera.
- `List`: En typ för att skapa och hantera listor av objekt.
- `Map`: En typ för att skapa och hantera mappningar av nyckel-värde-par.

Referenstyper lagrar inte själva värdet utan pekar på objektet i minnet där värdet finns lagrat. De ger oss möjligheten att hantera mer komplexa datastrukturer och skapa hierarkier av objekt.

## Termer

| Term          | Förklaring                                                                               |
| ------------- | ---------------------------------------------------------------------------------------- |
| Array         | En typ för att skapa och hantera arrayer av andra typer.                                 |
| Boolesk       | En typ med två möjliga värden: `true` och `false`.                                       |
| Char          | En 16-bitars Unicode-tecken.                                                             |
| Double        | En 64-bitars flyttal med dubbel precision.                                               |
| Float         | En 32-bitars flyttal med enkels precision.                                               |
| Int           | En 32-bitars heltalstyp.                                                                 |
| Interface     | En typ som definierar en samling metoder som en klass kan implementera.                  |
| Klass         | En mall för att skapa objekt.                                                            |
| List          | En typ för att skapa och hantera listor av objekt.                                       |
| Long          | En 64-bitars heltalstyp.                                                                 |
| Map           | En typ för att skapa och hantera mappningar av nyckel-värde-par.                         |
| Referenstyp   | En typ som lagrar en referens till ett objekt.                                           |
| Short         | En 16-bitars heltalstyp.                                                                 |
| Stack         | En del av minnet som används för att lagra metoder och lokala variabler.                 |
| String        | En klass för att hantera textsträngar.                                                   |
| Variabel      | En behållare som används för att lagra data.                                             |
| Värdestyp     | En typ som lagrar ett värde.                                                             |
| Wrapperklass  | En klass som används för att "linda in" primitiva typer och ge dem extra funktionalitet. |
| Wrapperobjekt | Ett objekt som innehåller en referens till en primitiv typ.                              |

## TL;DR-sammanfattning

I Java finns det olika typer av typer, inklusive primitiva typer och referenstyper. Primitiva typer inkluderar boolean, char, byte, short, int, long, float och double. Dessa typer lagrar värden direkt. Referenstyper inkluderar String, Array, Class, Interface, List och Map. Dessa typer lagrar referenser till objekt och ger oss möjligheten att hantera mer komplexa datastrukturer.