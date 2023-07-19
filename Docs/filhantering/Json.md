---
title: Json
permalink: filhantering/json
nav_order: 6
parent: Filhantering
grand_parent: Java
author: Marcus Medina
date: 2022-11-16 08:38
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
id: d17a2df2-5ed0-4df7-9c1c-5d5cdc74bde4
school: https://campus.molndal.se/yh
---

# Json

JSON är ett textbaserat filformat som används för att lagra och överföra data på ett strukturerat sätt. Det är enklare att läsa och skriva än XML och används ofta inom webbapplikationer. JSON används för att representera data i form av objekt och arrayer, och det är ett populärt filformat som har stöd i olika programmeringsspråk och plattformar.

## Gson-biblioteket

I Java finns det inbyggda verktyg och bibliotek för att arbeta med JSON-data. En av de mest populära biblioteken är Gson, som tillhandahåller funktioner för att serialisera och deserialisera JSON-data till Java-objekt och vice versa. Gson gör det enkelt att konvertera en JSON-sträng till ett Java-objekt och att generera en JSON-sträng från ett Java-objekt.

För att använda Gson-biblioteket behöver du lägga till beroendet i ditt projekt. Du kan göra det genom att lägga till följande kod i din pom.xml-fil om du använder Maven:

```xml
<dependencies>
    <dependency>
        <groupId>com.google.code.gson</groupId>
        <artifactId>gson</artifactId>
        <version>2.8.7</version>
    </dependency>
</dependencies>
```

När du har lagt till beroendet kan du använda Gson för att serialisera och deserialisera JSON-data. Här är några exempel på hur du kan använda Gson:

```java
import com.google.gson.Gson;

public class Main {
    public static void main(String[] args) {
        // Skapa en instans av Gson
        Gson gson = new Gson();

        // Serialisera ett Java-objekt till en JSON-sträng
        Person person = new Person("John Doe", 30);
        String json = gson.toJson(person);
        System.out.println(json); // {"name":"John Doe","age":30}

        // Deserialisera en JSON-sträng till ett Java-objekt
        String json2 = "{\"name\":\"Jane Smith\",\"age\":25}";
        Person person2 = gson.fromJson(json2, Person.class);
        System.out.println(person2.getName()); // Jane Smith
        System.out.println(person2.getAge()); // 25
    }
}

class Person {
    private String name;
    private int age;

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }
}
```

I exemplet ovan använder vi Gson för att serialisera en Person-objekt till en JSON-sträng och deserialisera en JSON-sträng till ett Person-objekt. Gson använder Java Reflection för att konvertera objekt mellan Java och JSON och det gör det enkelt att hantera komplexa datastrukturer.

## Skapa JSON-manuellt med StringBuilder

Förutom att använda bibliotek kan vi också skapa en JSON-sträng manuellt med hjälp av StringBuilder-klassen. Det här kan vara användbart om du behöver bygga en JSON-sträng dynamiskt eller om du inte vill använda ett tredjepartsbibliotek för att hantera JSON.

Här är ett exempel på hur du kan använda StringBuilder för att skapa en JSON-sträng som representerar en Star Wars-karaktär:

```java
StringBuilder sb = new StringBuilder();
sb.append("{");
sb.append("\"name\": \"Luke Skywalker\",");
sb.append("\"age\": 30");
sb.append("}");
String json = sb.toString();
```

I det här exemplet skapar vi en StringBuilder-instans och använder dess `append()`-metod för att bygga upp JSON-strängen steg för steg. Till slut använder vi `toString()`-metoden för att få den färdiga JSON-strängen.

## Läsa JSON-data

För att läsa JSON-data kan du använda Gson-biblioteket eller så kan du använda Java's inbyggda verktyg för JSON-hantering. Här är ett exempel på hur du kan läsa JSON-data utan att använda Gson:

```java
import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonReader;
import java.io.StringReader;

String json = "{\"name\":\"Luke Skywalker\",\"age\":30}";

JsonReader reader = Json.createReader(new StringReader(json));
JsonObject obj = reader.readObject();
String name = obj.getString("name");
int age = obj.getInt("age");

System.out.println(name); // Luke Skywalker
System.out.println(age); // 30
```

I det här exemplet använder vi `javax.json`-paketet för att läsa JSON-data. Vi skapar en JsonReader-instans och använder den för att läsa in JSON-data från en sträng. Sedan använder vi JsonObject för att få tillgång till de olika egenskaperna i JSON-objektet.

## Fördelar och nackdelar med JSON

Nu när du har lärt dig grunderna i JSON, låt oss titta på några fördelar och nackdelar med att använda JSON:

### Fördelar:

- JSON är lätt att läsa och skriva för både människor och maskiner.
- Det är ett populärt filformat och har stort stöd i olika programmeringsspråk och plattformar.
- JSON-data kan enkelt konverteras till objekt och vice versa, vilket gör det lätt att arbeta med.

### Nackdelar:

- JSON saknar några av de mer avancerade funktionerna som XML erbjuder.
- Det kan vara mindre lämpligt för strukturerade dokument med hierarkiska datastrukturer.
- JSON kan bli svårt att hantera om filerna blir mycket stora.

## Varför använda Gson istället för org.json?

Du kanske undrar varför jag rekommenderar Gson istället för org.json. Det finns flera skäl till detta:

- Gson har en mer intuitiv och enkel API-design.
- Gson har bättre prestanda och lägre minnesanvändning än org.json.
- Gson har stöd för avancerad typomvandling och anpassning av serialisering/deserialisering.
- Gson har en aktiv och stor användarbas och har mer dokumentation och exempel att använda som referens.

## Termer och förklaringar

Här är en tabell över termer som använts i denna artikel och deras förklaringar:

| Term          | Förklaring                                                                                |
| ------------- | ----------------------------------------------------------------------------------------- |
| JSON          | JavaScript Object Notation, ett textbaserat filformat för att lagra och transportera data |
| Serialisera   | Konvertera Java-objekt till JSON-format                                                   |
| Deserialisera | Konvertera JSON till Java-objekt                                                          |
| Gson          | Ett populärt bibliotek för JSON-hantering i Java                                          |
| StringBuilder | En klass i Java för att bygga upp textsträngar dynamiskt                                  |
| javax.json    | Ett paket i Java för JSON-hantering                                                       |
| org.json      | Ett bibliotek för JSON-hantering i Java                                                   |

För att fördjupa dina kunskaper och utforska mer om JSON och Java-programmering rekommenderar jag följande resurser:

- [JSON.org](https://json.org/): Den officiella webbplatsen för JSON med massor av information och exempel.
- [Gson Dokumentation](https://github.com/google/gson/blob/master/README.md): Officiell dokumentation för Gson-biblioteket, ett populärt bibliotek för att hantera JSON i Java.
- [Oracle Java Tutorials](https://docs.oracle.com/javase/tutorial/): Officiella Java-tutorials från Oracle för att lära dig mer om Java-programmering.

### Obligatorisk Dad Joke

Varför gick JSON till terapeuten?
För att det hade problem med att parsa sina känslor!