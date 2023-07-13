---
author: Marcus Medina
title: Json
nav_order: 6
parent: Filhantering
grand_parent: Java
permalink: filhantering/Json
date: 2022-11-16 08:38
layout: default
author_github: https://github.com/marcusjobb
codelanguage: C#
school: https://campus.molndal.se/yh
enhance: false
id: d17a2df2-5ed0-4df7-9c1c-5d5cdc74bde4
author_url: https://marcusmedina.pro
---

JSON är ett textbaserat filformat som används för att lagra och överföra data på ett strukturerat sätt. Det är enklare att läsa och skriva än XML och används ofta inom webbapplikationer. JSON används för att representera data i form av objekt och arrayer, och det är ett populärt filformat som har stöd i olika programmeringsspråk och plattformar.

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
    public String getName() { return name; }
    public int getAge() { return age; }
    }
}
```

I exemplet ovan använder vi Gson för att serialisera en Person-objekt till en JSON-sträng och deserialisera en JSON-sträng till ett Person-objekt. Gson använder Java Reflection för att konvertera objekt mellan Java och JSON och det gör det enkelt att hantera komplexa datastrukturer.
JSON är ett kraftfullt verktyg för att hantera data på ett strukturerat sätt och det kan vara till stor hjälp i Java-programmering. Med Gson-biblioteket kan du enkelt arbeta med JSON-data i dina Java-applikationer och utbyta data med externa system som använder JSON som filformat.

```xml
<dependencies>
    <dependency>
        <groupId>fasterxml.jackson.core</groupId>
        <artifactId>jackson-databind</artifactId>
        <version>2.12.5</version>
    </dependency>
</dependencies>
```

När du har lagt till beroendet kan du använda Jackson för att serialisera och deserialisera JSON-data. Här är några exempel på hur du kan använda Jackson:

```java
// Steg 1: Lägg till beroendet i ditt projekt
import java.io.IOException;
import com.fasterxml.jackson.databind.ObjectMapper;
// Steg 2: Skapa en instans av ObjectMapper-klassen
ObjectMapper objectMapper = new ObjectMapper();
// Steg 3: Konvertera ett objekt till JSON (serialisering)
String json = objectMapper.writeValueAsString(objekt);
// Steg 4: Konvertera JSON till ett objekt (deserialisering)
Objekt objekt = objectMapper.readValue(json, Objekt.class);
```

- Steg 1: Lägg till beroendet i ditt projekt
- Steg 2: Vi skapar en instans av ObjectMapper-klassen. Detta objekt kommer att användas för att utföra serialisering och deserialisering av JSON-data.
- Steg 3: Vi använder writeValueAsString() metoden för att konvertera ett objekt till JSON. Vi passerar objektet som parameter och metoden returnerar en JSON-sträng.
- Steg 4: Vi använder readValue() metoden för att konvertera en JSON-sträng till ett objekt. Vi passerar JSON-strängen och den önskade klassen som parameter, och metoden returnerar ett objekt av den klassen.
  I exemplet ovan använder vi Jackson för att serialisera ett objekt till en JSON-sträng och deserialisera en JSON-sträng till ett objekt. Jackson använder Java Reflection för att konvertera objekt mellan Java och JSON och det gör det enkelt att hantera komplexa datastrukturer.,
  JSON är ett kraftfullt verktyg för att hantera data på ett strukturerat sätt och det kan vara till stor hjälp i Java-programmering. Med Jackson-biblioteket kan du enkelt arbeta med JSON-data i dina Java-applikationer och utbyta data med externa system som använder JSON som filformat.

#### Serialisera JSON-data

Först ska vi titta på hur vi kan konvertera Java-objekt till JSON-format (serialisera). Anta att vi har en Java-klass som representerar en Star Wars-karaktär:

```java
public class Karaktär {
    private String namn;
    private int ålder;
    private String kön;

    // Getter och setter-metoder för att få tillgång till variablerna
    public String getNamn() { return namn; }
    public int getÅlder() { return ålder; }
    public String getKön() { return kön; }
    public void setNamn(String namn) { this.namn = namn; }
    public void setÅlder(int ålder) { this.ålder = ålder; }
    public void setKön(String kön) { this.kön = kön; }
}
```

Nu kan vi använda Gson för att serialisera en instans av vår Karaktär-klass till JSON-format:

```java
Karaktär lukeSkywalker = new Karaktär();
lukeSkywalker.setNamn("Luke Skywalker");
lukeSkywalker.setÅlder(25);
lukeSkywalker.setKön("Manlig");
Gson gson = new Gson();
String json = gson.toJson(lukeSkywalker);
```

Strängen json kommer nu att innehålla följande:

```json
{
  "namn": "Luke Skywalker",
  "ålder": 25,
  "kön": "Manlig"
}
```

I det här exemplet skapar vi en instans av Karaktär-klassen och fyller den med värden. Sedan använder vi `gson.toJson()`-metoden från Gson för att konvertera vår instans till en JSON-sträng.

#### Deserialisera JSON-data

Nästa steg är att titta på hur vi kan konvertera JSON-data till Java-objekt (deserialisera). Antag att vi har en JSON-sträng som representerar en Star Wars-karaktär:

```java
String json = "{
  \"namn\": \"Leia Organa\",
  \"ålder\": 23,
  \"kön\": \"Kvinnlig\"
}";
```

Nu kan vi använda Gson för att deserialisera JSON-strängen till en instans av Karaktär-klassen:

```java
Karaktär leiaOrgana = gson.fromJson(json, Karaktär.class);
```

Här använder vi `gson.fromJson()`-metoden från Gson för att konvertera JSON-strängen till en instans av Karaktär-klassen. Vi behöver också ange klassen som vi vill konvertera till som en parameter.I det här exemplet använder vi metoden `JsonConvert.DeserializeObject<T>()` från Newtonsoft.Json för att konvertera JSON-strängen till en instans av Karaktär-klassen.

### Skapa en JSON-sträng med StringBuilder

Förutom att använda bibliotek vi också skapa en JSON-sträng manuellt med hjälp av StringBuilder-klassen. Det här kan vara användbart om du behöver bygga en JSON-sträng dynamiskt eller om du inte vill använda ett tredjepartsbibliotek för att hantera JSON.

Här är ett exempel på hur du kan använda StringBuilder för att skapa en JSON-sträng som representerar en Star Wars-karaktär:

```java
StringBuilder sb = new StringBuilder();
sb.append("{");
sb.append("\"namn\": \"Han Solo\",");
sb.append("\"ålder\": 35,");
sb.append("\"kön\": \"Manlig\"");
sb.append("}");
String json = sb.toString();
```

I det här exemplet skapar vi en StringBuilder-instans och använder dess `append()`-metod för att bygga upp JSON-strängen steg för steg. Till slut använder vi `toString()`-metoden för att få den färdiga JSON-strängen.

### Läsa av JSON-data utan Newtonsoft.Json

Visst, vi har pratat mycket om Newtonsoft.Json, men vad händer om du inte vill använda det? Oroa dig inte, du kan fortfarande läsa av JSON-data i C# utan att använda något tredjepartsbibliotek.

En vanlig metod för att läsa av JSON-data utan Newtonsoft.Json är att använda den inbyggda `javax.json`-paketet i Java.

Här är ett exempel på hur du kan använda `javax.json` för att läsa av JSON-data:

```java
String vader="\"namn\":\"Darth Vader\",\"ålder\":45,\"kön\":\"Manlig\"";

JsonReader reader = Json.createReader(new StringReader(json));
JsonObject obj = reader.readObject();
String namn = obj.getString("namn");
int ålder = obj.getInt("ålder");
String kön = obj.getString("kön");
```

I det här exemplet skapar vi en JsonReader-instans och använder den för att läsa in JSON-data från en sträng. Sedan använder vi JsonObject för att få tillgång till de olika egenskaperna i JSON-objektet.I det här exemplet använder vi `JsonParser.parse()`-metoden från `org.json` för att analysera JSON-strängen och skapa ett `JSONObject`-objekt. Sedan använder vi `getString()`-metoden för att få tag på specifika egenskaper från JSON-data.
Du kan även serialisera klasser med Gson. Här är ett exempel på hur du kan göra det:

```java
// Konstruktor, getters och setters
Karaktär lukeSkywalker = new Karaktär();
lukeSkywalker.setNamn("Luke Skywalker");
lukeSkywalker.setÅlder(25);
lukeSkywalker.setKön("Manlig");
String json = gson.toJson(lukeSkywalker);
System.out.println(json);
```

När du kör detta program kommer det att skapa en instans av `Karaktär`-klassen med värdena för Luke Skywalker och sedan serialisera den till en JSON-sträng med Gson. Den genererade JSON-strängen skrivs sedan ut på konsolen.
Output:

```
{ "namn": "Luke Skywalker", "ålder": 25, "kön": "Manlig" }
```

Detta är det grundläggande exemplet på hur man serialiserar med Gson. Du kan anpassa och använda det i din egen kod för att serialisera olika objekt till JSON.

## Fördelar och Nackdelar med JSON

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
Både Gson och org.json är JSON-hanteringsbibliotek i Java som kan användas för att serialisera och deserialisera JSON-data. Båda biblioteken har sina egna fördelar och användningsområden. Här är några skäl till varför du kanske vill använda Gson istället för org.json:

- Gson har en mer intuitiv och enkel API-design.
- Gson har bättre prestanda och lägre minnesanvändning än org.json.
- Gson har stöd för avancerad typomvandling och anpassning av serialisering/deserialisering.
- Gson har en aktiv och stor användarbas och har mer dokumentation och exempel att använda som referens.- Newtonsoft.Json är mer stabilt och har färre buggar än System.Text.Json.
- Bred användning: Newtonsoft.Json (också känt som Json.NET) har funnits på marknaden mycket längre än System.Text.Json och har en bred användarbas. Detta betyder att det finns en stor mängd dokumentation, exempel och community-stöd tillgängligt för att hjälpa dig när du arbetar med biblioteket.
- Flexibilitet och anpassningsbarhet: Newtonsoft.Json erbjuder en mängd olika funktioner och inställningar som ger dig möjlighet att anpassa serialiserings- och deserialiseringsprocessen. Du kan styra hur objekt och egenskaper ska serialiseras, hantera referensloopar, ignorera specifika egenskaper och mycket mer. Detta ger dig en större flexibilitet när du behöver finjustera JSON-hanteringen efter dina behov.
- Bättre hantering av komplexa scenarier: Newtonsoft.Json har en robust och mogen implementation som är väl anpassad för att hantera mer komplexa scenarier, till exempel när du arbetar med hierarkiska JSON-strukturer eller behöver hantera specialfall som formatterade datumsträngar. Det erbjuder även möjligheter att skapa anpassade konverterare och resolver för att hantera specifika datatyper och egenskaper på ett mer avancerat sätt.
- Bakåtkompatibilitet: Om du arbetar med befintlig kod eller projekt som redan använder Newtonsoft.Json, kan det vara praktiskt att fortsätta använda det för att undvika eventuella brytningar eller kompatibilitetsproblem. Det kan också vara enklare att migrera befintlig kod från Newtonsoft.Json till System.Text.Json om det skulle behövas i framtiden, eftersom det finns verktyg och resurser tillgängliga för en smidig övergång.

## Tabell av termer

| Term            | Förklaring                                                                                |
| --------------- | ----------------------------------------------------------------------------------------- |
| JSON            | JavaScript Object Notation, ett textbaserat filformat för data                            |
| Serialisera     | Konvertera Java-objekt till JSON-format                                                   |
| Deserialisera   | Konvertera JSON till C#-objekt                                                            |
| Newtonsoft.Json | Ett populärt bibliotek för JSON-hantering i C#                                            |
| StringBuilder   | En klass i Java för att bygga upp textsträngar dynamiskt                                  |
| [XML](./XML.md) | Extensible Markup Language, ett textbaserat filformat för att lagra och transportera data |

För att fördjupa dina kunskaper och utforska mer om JSON och Java-programmering rekommenderar jag följande resurser:

- [JSON.org](https://json.org/): Den officiella webbplatsen för JSON med massor av information och exempel.
- [Jackson Dokumentation](https://github.com/FasterXML/jackson-docs): Officiell dokumentation för Jackson-biblioteket, ett populärt bibliotek för att hantera JSON i Java.
- [Gson Dokumentation](https://github.com/google/gson/blob/master/README.md): Officiell dokumentation för Gson-biblioteket, ett annat populärt bibliotek för att hantera JSON i Java.
- [Oracle Java Tutorials](https://docs.oracle.com/javase/tutorial/): Officiella Java-tutorials från Oracle för att lära dig mer om Java-programmering.

## Obligatorisk Dad Joke

Varför gick JSON till terapeuten?
För att det hade problem med att parsa sina känslor!
_aaaaw_