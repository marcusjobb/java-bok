---
title: API
author: Marcus Medina
date: 2022-11-23 12:27
lang_supported: ["csharp","java"]
permalink: asp.net/api
tags: ["api","asp.net"]
categories: ["Api","Asp.Net"]
parent: ASP.net
layout: default
has_children: true
isverified: true
nav_order: 8
---
# API

Ett API är ett gränssnitt som används för att kommunicera med en webbapplikation. Detta kan vara en URL som används för att hämta data eller en URL som används för att skicka data till en webbapplikation. 
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

API betyder Application Programming Interface. 

APIet har ingen GUI, man kan ställa frågor till APIet och få svar. APIet kan också ta emot data och skicka tillbaka data. Kommunikationen sker oftast i XML eller JSON. 

API fungerar som en bradvägg mellan två applikationer. Detta gör klienten och servern oberoende av varandra. Klienten kommer bara att se delar av servern som APIn tilåter. APIn förenklar kommunikaionen mellan klienten och servern.

## Exempel

```java
// The movie database API, ask for the movie "Happy death day"

// Read file with API key from MyDocuments
String myDocs = System.getProperty("user.home") + File.separator + "Documents";
String APIKey = Files.readString(Path.of(myDocs, "APiKeys", "themoviedb.APIKey.txt"));

// The URL
String url = "https://api.themoviedb.org/3/search/movie?api_key="+APIKey+"&query=Happy+death+day";

// Create a request for the URL.
URL obj = new URL(url);
HttpURLConnection con = (HttpURLConnection) obj.openConnection();

// optional default is GET
con.setRequestMethod("GET");

//add request header
con.setRequestProperty("User-Agent", "Mozilla/5.0");

int responseCode = con.getResponseCode();
System.out.println("\nSending 'GET' request to URL : " + url);
System.out.println("Response Code : " + responseCode);

BufferedReader in = new BufferedReader(
        new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();

while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();

//print result
System.out.println(response.toString());
```

## Referenser

* [Wikipedia](https://sv.wikipedia.org/wiki/API)
* [MDN](https://developer.mozilla.org/en-US/docs/Web/API)
* [The Movie Database](https://developers.themoviedb.org/3/getting-started/introduction)
