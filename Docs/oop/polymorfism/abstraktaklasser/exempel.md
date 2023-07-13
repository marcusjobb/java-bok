---
author: Marcus Medina
title: Exempel
nav_order: 2
parent: Abstrakta klasser
grand_parent: Polymorfism
permalink: oop/polymorfism/abstraktaklasser/exempel
date: 2022-11-20 01:27
layout: default
author_url: https://marcusmedina.pro
enhance: false
author_github: https://github.com/marcusjobb
id: 7b2a61ca-28e9-4efe-9104-3c808ba4b9f1
codelanguage: Java
school: https://campus.molndal.se/yh
---

# Exempel - Webscraping

I den här artikeln ska vi titta på hur man skapar en abstrakt klass med abstrakta och virtuella metoder i Java.

För detta behöver vi Maven libraryn JSOUP 1.14.3 eller nyare.

<dependency>
    <groupId>org.jsoup</groupId>
    <artifactId>jsoup</artifactId>
    <version>1.14.3</version>
</dependency>

## Beskrivning

En abstrakt klass kan innehålla vanliga metoder, abstrakta och virtuella metoder. Vi kommer att använda den här mallen för att skapa en abstrakt klass som hanterar webbskrapning för olika sidor. Vi använder även följande Java-paket:

- JSoup för att hantera HTML-dokument.

## Fördelar

När du använder abstrakta klasser kan du dra nytta av följande fördelar:

1. **Återanvändbarhet:** Abstrakta klasser kan fungera som grund för andra klasser och möjliggöra återanvändning av kod.
2. **Moduläritet:** Genom att använda abstrakta metoder kan du separera implementationen av en metod från själva klassen, vilket leder till en modulär design.
3. **Flexibilitet:** Abstrakta klasser kan användas som bas för olika implementationer och ge flexibilitet i utvecklingen.

## Begränsningar

Det finns några begränsningar att vara medveten om när du använder abstrakta klasser:

1. **Enkel arv:** En klass kan bara ärva från en enda abstrakt klass, vilket kan begränsa möjligheterna till hierarkiska strukturer.
2. **Ingen direkt instansiering:** Eftersom en abstrakt klass inte kan instansieras direkt måste den ärvas och implementeras i en konkret klass för att användas.

## Användningsområden

Abstrakta klasser är användbara i olika scenarier, inklusive:

1. **Framtida utbyggbarhet:** Genom att definiera abstrakta metoder kan du planera för framtida utökning och implementation av specifika beteenden.
2. **Grundläggande mallar:** Abstrakta klasser kan fungera som grund för att skapa mallar eller ramverk med fördefinierad funktionalitet.
3. **Plugin-arkitektur:** Genom att använda abstrakta klasser kan du skapa en flexibel arkitektur för att lägga till och hantera plugins i din applikation.

## Kodexempel

Här är en implementation av en abstrakt klass för webbskrapning i Java:

```java
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public abstract class WebScraper {
    private String url = "";
    private String title = "";
    private String description = "";
    private String tags = "";
    private Document htmlDocument = null;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public Document getHtmlDocument() {
        return htmlDocument;
    }

    public void setHtmlDocument(Document htmlDocument) {
        this.htmlDocument = htmlDocument;
    }

    public String getHtml() {
        return htmlDocument != null ? htmlDocument.outerHtml() : "";
    }

    public String getText() {
        return htmlDocument != null ? htmlDocument.text() : "";
    }

    public String getHtmlDocument(String url) {
        setUrl(url);
        try {
            htmlDocument = Jsoup.connect(url).get();
            title = htmlDocument.title();
            description = htmlDocument.select("meta[name=description]").attr("content");
            tags = htmlDocument.select("meta[name=keywords]").attr("content");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return getHtml();
    }

    public String getDivById(String id) {
        Element div = htmlDocument != null ? htmlDocument.getElementById(id) : null;
        return div != null ? div.outerHtml() : "";
    }

    public List<String> getDivByClass(String className) {
        Elements divs = htmlDocument != null ? htmlDocument.getElementsByClass(className) : null;
        List<String> divHtmlList = new ArrayList<>();
        if (divs != null) {
            for (Element div : divs) {
                divHtmlList.add(div.outerHtml());
            }
        }
        return divHtmlList;
    }

    public List<String> getElementByClass(String element, String className) {
        Elements elements = htmlDocument != null ? htmlDocument.select(element + "." + className) : null;
        List<String> elementHtmlList = new ArrayList<>();
        if (elements != null) {
            for (Element el : elements) {
                elementHtmlList.add(el.outerHtml());
            }
        }
        return elementHtmlList;
    }

    public List<String> getImages() {
        List<String> imageUrls = new ArrayList<>();
        if (htmlDocument != null) {
            Elements images = htmlDocument.select("img");
            for (Element image : images) {
                String imageUrl = image.attr("src");
                if (imageUrl.endsWith(".jpg") || imageUrl.endsWith(".png")) {
                    if (!imageUrl.startsWith("http:") && !imageUrl.startsWith("https:")) {
                        imageUrl = url.trim() + imageUrl;
                    }
                    imageUrls.add(imageUrl);
                }
            }
        }
        return imageUrls;
    }

    public abstract void scrape(String url);
}
```

Nu ska vi göra en implementation av denna klass för att hämta innehållet från en specifik sida.

```java
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.util.List;

public class GetKittens extends WebScraper {
    public String

 downloadKitten() {
        scrape("https://www.pinterest.com/katesaidy/cute-kitten-pics/");
        String imgFolder = System.getProperty("user.home") + "/Pictures";
        String filename = imgFolder + "/Daily kitten.jpg";
        File file = new File(filename);
        if (file.exists()) {
            return filename;
        } else {
            return "";
        }
    }

    @Override
    public List<String> getImages() {
        List<String> imageUrls = super.getImages();

        // IMG SRC fungerade inte på Pinterest så vi söker med regex istället
        // För att göra det mer genomskinnligt så överridar vi bara GetImages
        if (getHtmlDocument() != null) {
            String html = getHtml();
            String regex = "(['\"])([^'\"]+\\.(jpg|png|bmp|gif))\\1";
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(html);
            while (matcher.find()) {
                System.out.println(matcher.group(2));
                imageUrls.add(matcher.group(2));
            }
        }
        return imageUrls;
    }

    // Här är scrape-metoden som vi måste implementera
    @Override
    public void scrape(String url) {
        System.out.println("Downloading page");
        getHtmlDocument(url);
        System.out.println("Getting image list");
        List<String> images = getImages();
        System.out.println("Removing crap images");
        images.removeIf(pic -> pic.contains("/images/user/"));
        if (images.isEmpty()) {
            return;
        }

        // Hämtar en slumpmässig bild från listan
        Random random = new Random();
        System.out.println("Selecting random image");
        String randomImage = images.get(random.nextInt(images.size()));
        System.out.println("Downloading image");
        System.out.println(randomImage);
        try {
            URL imageUrl = new URL(randomImage);
            BufferedImage image = ImageIO.read(imageUrl);
            System.out.println("Saving image");
            String imgFolder = System.getProperty("user.home") + "/Pictures";
            String filename = imgFolder + "/Daily kitten.jpg";
            File file = new File(filename);
            ImageIO.write(image, "jpg", file);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```

Jag hoppas att du gillar exemplet och att det är till hjälp för dig. Kattbilder är alltid en hit! Ha det roligt med webbscraping och experimentera med olika sidor att hämta innehåll från. Lycka till! 😺

## Termer

Här är en lista över några termer som används i koden:

- `WebScraper`: En abstrakt klass som hanterar webbskrapning och definierar olika metoder för att hämta och bearbeta webbsidor.
- `url`: En variabel som representerar adressen till den webbsida som ska webscrapas.
- `title`: En variabel som representerar titeln på webbsidan.
- `description`: En variabel som representerar sidans egna beskrivning.
- `tags`: En variabel som representerar meta-nyckelord från webbsidan.
- `htmlDocument`: En variabel som representerar det HTML-dokument som hämtas från webbsidan.
- `html`: En metod som returnerar HTML-dokumentet som en sträng.
- `text`: En metod som returnerar all text på webbsidan utan HTML-taggar.
- `getHtmlDocument`: En metod som öppnar en webbsida och hämtar dess HTML-dokument.
- `getDivById`: En metod som hämtar innehållet i en div med en specifik id från webbsidan.
- `getDivByClass`: En metod som hämtar innehållet i alla divar med en specifik klass från webbsidan.
- `getElementByClass`: En metod som hämtar innehållet i alla element med en specifik klass från webbsidan.
- `getImages`: En metod som hämtar URL:er till alla bilder (IMG SRC-länkar) på webbsidan.
- `scrape`: En abstrakt metod som definierar hur webbsidan ska webscrapas.
- `GetKittens`: En klass som ärver från `WebScraper` och implementerar `scrape`-metoden för att hämta kattbilder från en specifik sida.
- `Abstrakt klass`: En klass som inte kan instansieras direkt utan måste ärvas och implementeras i en konkret klass.
- `Virtuell metod`: En metod som kan överskridas i en subklass.
- `Paket`: En samling av Java-klasser och resurser som kan användas för att tillhandahålla specifik funktionalitet.
- `Grafik`: Bilder, ikoner och andra visuella element som används på en webbsida.
- `HTML-dokument`: En textfil som innehåller HTML-kod för att skapa en webbsida.
- `Överskrida`: Att skriva om en metod i en subklass.
- `Utöka`: Att lägga till funktionalitet i en subklass.
- `Klassimplementation`: En klass som ärver från en abstrakt klass och implementerar dess abstrakta metoder.
- `Återanvändbar kod`: Kod som kan återanvändas i olika delar av ett projekt.
- `Underhållbar kod`: Kod som är lätt att förstå och underhålla.

## Slutsats

I den här artikeln har vi utforskat användningen av abstrakta klasser och metoder i Java. Vi har sett hur man kan skapa en abstrakt klass med abstrakta och virtuella metoder för att hantera webbskrapning av olika sidor. Vi har också diskuterat användningen av JSoup för att underlätta hanteringen av HTML-dokument.

En abstrakt klass ger oss en bra grundstruktur för att implementera specifik funktionalitet och samtidigt möjliggöra flexibilitet genom att tillåta subklasser att överskrida och utöka funktionaliteten genom att implementera abstrakta metoder. Detta hjälper oss att skapa återanvändbar och underhållbar kod.

Vi har också sett en konkret implementation av den abstrakta klassen för att hämta kattbilder från en specifik sida. Genom att använda olika metoder som `getImages` och `getHtmlDocument`, kan vi hämta och bearbeta bilder från webbsidan.

Det är viktigt att nämna att det finns många andra sätt att använda abstrakta klasser och metoder i Java. Det är en kraftfull mekanism som kan användas för att skapa flexibla och modulära applikationer. Jag hoppas att du har lärt dig något nytt och att du kommer att använda denna kunskap i dina egna projekt. Lycka till! 😺

## Referenser

- [JSoup](https://jsoup.org/)
- [Java](https://www.java.com/)
- [Wikipedia](https://en.wikipedia.org/wiki/Abstract_type)
