---
title: Exempel
author: Marcus Medina
date: 2022-11-20 02:59
lang_supported: ["csharp","java"]
permalink: csharp/events/exempel
tags: ["csharp","events","exempel"]
categories: ["Csharp","Events"]
parent: Events
layout: default
isverified: true
nav_order: 1
---
# Bankkonto

Vi ska skapa ett bankkonto där vi kan sätta in pengar och ta ut pengar. 
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

Vårt bankkonto kommer att ha flera events. 
- Insättning
- Uttag
- Saldo mindre än 0
- Insättning med felaktig summa
- Uttag med felaktig summa
- Insättning på mer än 15000 (varning för kriminalitet)

## Exempel
