---
title: Enum
permalink: variables/enum
nav_order: 27
parent: Variabler
grand_parent: Home
author: Marcus Medina
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
id: 91bd5b12-921c-4cd2-b8b2-f86b59b3e06c
school: https://campus.molndal.se/yh
---

# Enum

Enum är lite speciell, den kan vara enkel som en lista av värden och den kan
vara som en klass... aj aj aj.. hur ska man veta när man ska ha vad? Det ska vi
titta på!

## Introduktion

Välkommen till denna omfattande artikel om enum i Java! Enumerations, eller
enums, är en kraftfull funktion inom Java-programmering som hjälper oss att
skapa tydliga och läsbara kodstrukturer för att representera en uppsättning
konstanter. I denna artikel kommer vi att djupdyka in i hur enums fungerar,
varför de är användbara och när man bör använda dem som klasser. Vi kommer
också att utforska detaljer kring när det är lämpligt att använda enums i
jämförelse med andra typer av klasser. Dessutom kommer vi att ge omfattande
kodexempel och visa konkreta outputs och resultat för att göra förståelsen ännu
enklare och mer visuell. Låt oss börja med att undersöka vad en enum är och
varför den är så viktig i Java-programmering.

## TL;DR

Enums i Java är en typsäker konstantuppsättning som representerar olika värden
genom namngivna konstanter. De förbättrar kodens klarhet genom att
tillhandahålla en lättförståelig lista över tillåtna värden och minskar risken
för felaktiga inmatningar. Enumerations är särskilt användbara när man behöver
definiera ett begränsat antal möjliga värden för en variabel eller ett
attribut.

## När du läst detta ska du kunna

- Förstå och förklara vad en enum är och hur den används i Java-programmering.
- Diskutera fördelar och begränsningar med enums i Java.
- Identifiera situationer där enums kan användas för att förbättra kodens kvalitet och klarhet.
- Jämföra och kontrastera enums med andra typer av klasser.
- Förstå och tolka kodexempel som använder enums och visa deras utfall.

## Vad är en enum i Java?

En enum, kort för "enumeration," är en typsäker konstantuppsättning i Java. Med
hjälp av enum kan vi definiera en samling av namngivna konstanter som
representerar olika värden. Dessa konstanter fungerar som speciella objekt, och
vi kan använda dem för att skapa mer läsbar och förståelig kod.

Enums i Java används ofta för att representera en uppsättning möjliga värden
för ett attribut eller ett tillstånd i vår kod. Genom att använda enums kan vi
undvika att hårdkoda värden direkt i vår kod och istället använda oss av
namngivna konstanter som har en innebörd.

För att skapa en enum i Java, definierar vi den som en separat klass med en
fast uppsättning instanser som är publika, statiska och slutliga (public,
static, final). Varje instans representerar en konstant och är av den typ som
vi definierar för enum-klassen. Låt oss se ett exempel på en enkel enum som
representerar veckodagar:

```java
public enum Weekday {
    MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
}
```

I detta exempel har vi skapat en enum `Weekday` med sju konstanter som representerar veckodagarna. När vi använder denna enum i vår kod, kan vi referera till varje konstant med dess namn, t.ex. `Weekday.MONDAY` eller `Weekday.FRIDAY`.

<image src="gandalfpink.png" style="float:right">
För att hålla bokens standard stil så lägger vi in ett lite nördighet

```java

enum Race{
HOBBIT, DWARF, ELF, HUMAN, ORC, TROLL, WIZARD, DRAGON
}

enum HobbitFamily{
BAGGINS, TOOK, BRACEGIRDLE, BOLGER, BURROWS, CHUBB, GRUBB, HORNBLOWER, SACKVILLE, TUNNELLY, UNDERHILL
}

enum WizardColors{
BLUE, BROWN, GREY, GREEN, RED, WHITE, YELLOW,
PINK /_ HBTQ uppgradering _/
}

````

## Fördelar

Användningen av enums ger oss flera fördelar. En av de största fördelarna är
att de ger ökad typsäkerhet i vår kod. Genom att använda enums kan vi begränsa
de giltiga värdena för ett attribut eller ett tillstånd och därmed förhindra
felaktiga inmatningar. Om vi t.ex. har ett attribut för veckodag, kan vi
använda en enum för att garantera att det endast kan ha värden som
representerar riktiga veckodagar.

Enums ökar också klarheten i vår kod. Istället för att använda abstrakta
siffror eller bokstäver för att representera olika värden kan vi använda sig av
namn som tydligt beskriver vad varje konstant representerar. Detta gör koden
mer självdokumenterande och lätt att läsa och förstå.

En annan fördel med enums är att de ger oss möjligheten att enkelt iterera över
alla värden i uppsättningen. Detta kan vara mycket användbart när vi behöver
behandla alla konstanter i en enum på ett enhetligt sätt.

Enums erbjuder också stöd för switch-satser, vilket gör det enklare att skriva
ren och effektiv kod. Låt oss titta på ett exempel där vi använder en enum för
att representera olika veckodagar och sedan använda en switch-sats för att
utföra olika handlingar baserat på dagen.

```java
public enum Weekday {
    MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
}

public class Main {
    public static void main(String[] args) {
        Weekday day = Weekday.MONDAY;

        switch (day) {
            case MONDAY:
            case TUESDAY:
            case WEDNESDAY:
            case THURSDAY:
            case FRIDAY:
                System.out.println("Det är en arbetsdag. Ta på dig arbetskläderna!");
                break;
            case SATURDAY:
            case SUNDAY:
                System.out.println("Det är helg! Ta det lugnt och njut av ledigheten!");
                break;
            default:
                System.out.println("Ogiltig veckodag.");
        }
    }
}
````

I detta exempel har vi definierat en enum `Weekday` som representerar de olika veckodagarna. Sedan har vi använt en switch-sats för att skriva ut olika meddelanden baserat på vilken veckodag som är vald. Koden är enkel och lätt att förstå, tack vare användningen av enums.

## Begränsningar

Även om enums är kraftfulla och användbara har de också några begränsningar. En
enum kan inte ärva från andra klasser,och du kan inte heller instansiera enums
med "new" -operatorn. Detta innebär att enums inte kan användas för att skapa
objekt med olika egenskaper.

Dessutom kan en enum inte vara en inre klass i en annan klass, och en enum kan
inte utöka andra klasser. Denna begränsning gör att enums inte är lämpliga när
vi behöver skapa en komplex hierarki av klasser.

## Användningsområden

Enums kan användas i olika scenarier inom Java-programmering. Några exempel på användningsområden inkluderar:

- Representations av veckodagar, månader eller årstider.
- Tillstånd eller statuskoder för en applikation.
- Kategorier eller typer av objekt i ett system.

Låt oss nu se på ett mer detaljerat kodexempel där vi använder en enum för att representera olika typer av användarroller i en applikation.

```java
public enum UserRole {
    ADMIN("Administratör"),
    MODERATOR("Moderator"),
    USER("Användare");

    private final String roleDescription;

    UserRole(String roleDescription) {
        this.roleDescription = roleDescription;
    }

    public String getRoleDescription() {
        return roleDescription;
    }
}

public class User {
    private String username;
    private UserRole role;

    public User(String username, UserRole role) {
        this.username = username;
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public UserRole getRole() {
        return role;
    }
}

public class Main {
    public static void main(String[] args) {
        User adminUser = new User("JohnDoe", UserRole.ADMIN);
        User regularUser = new User("JaneSmith", UserRole.USER);

        System.out.println(adminUser.getUsername() + " har rollen: " + adminUser.getRole().getRoleDescription());
        System.out.println(regularUser.getUsername() + " har rollen: " + regularUser.getRole().getRoleDescription());
    }
}
```

I detta exempel har vi skapat en enum `UserRole` som representerar olika användarroller. Varje konstant har också en beskrivning av rollen som lagras i en privat instansvariabel. Vi använder sedan denna enum i en användarobjektklass för att definiera användarnas roller. I `Main`-klassen skapar vi två användare med olika roller och skriver ut deras användarnamn och roller. Resultatet blir:

```
JohnDoe har rollen: Administratör
JaneSmith har rollen: Användare
```

Som vi kan se ger enums oss en tydligare representation av användarrollerna, vilket gör vår kod mer lättläst och lättförståelig.

## När ska man använda en Enum som klass och när ska man använda en vanlig klass?

En vanlig klass i Java representerar vanligtvis en grupp av objekt med olika attribut och metoder. Å andra sidan representerar en enum en begränsad uppsättning konstanter som är tätt kopplade till varandra och har en specifik innebörd.

För att avgöra om du bör använda en enum eller en vanlig klass, överväg följande:

Använd en Enum:

- När du har en definierad uppsättning konstanter som har en klar relation till varandra.
- När du vill begränsa de möjliga värdena för en variabel eller ett attribut.

Använd en Vanlig Klass:

- När du behöver skapa objekt med olika attribut och beteenden.
- När objekten i klassen har mer komplexa relationer och inte passar in i en förutbestämd uppsättning konstanter.

I allmänhet, om dina värden har enklare relationer och är fördefinierade, är det bäst att använda enums för att förbättra kodens klarhet och säkerhet.

## Outputs och Resultat

Låt oss nu se på ytterligare exempel där vi använder en enum för att representera olika typer av användarroller och sedan utför olika operationer baserat på deras roller.

```java
public enum UserRole {
    ADMIN("Administratör"),
    MODERATOR("Moderator"),
    USER("Användare");

    private final String roleDescription;

    UserRole(String roleDescription) {
        this.roleDescription = roleDescription;
    }

    public String getRoleDescription() {
        return roleDescription;
    }
}

public class User {
    private String username;
    private UserRole role;

    public User(String username, UserRole role) {
        this.username = username;
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public UserRole getRole() {
        return role;
    }
}

public class Main {
    public static void main(String[] args) {
        User adminUser = new User("JohnDoe", UserRole.ADMIN);
        User regularUser = new User("JaneSmith", UserRole.USER);

        System.out.println(adminUser.getUsername() + " har rollen: " + adminUser.getRole().getRoleDescription());
        System.out.println(regularUser.getUsername() + " har rollen: " + regularUser.getRole().getRoleDescription());

        // Använda en switch-sats med enum för att utföra olika operationer baserat på användarroll
        switch (adminUser.getRole()) {
            case ADMIN:
                System.out.println(adminUser.getUsername() + " har administrat

örsbehörighet.");
                break;
            case MODERATOR:
                System.out.println(adminUser.getUsername() + " har moderatorbehörighet.");
                break;
            case USER:
                System.out.println(adminUser.getUsername() + " har användarbehörighet.");
                break;
            default:
                System.out.println("Okänd användarroll.");
        }
    }
}
```

I detta exempel har vi utökat det tidigare exemplet genom att använda en switch-sats för att utföra olika operationer baserat på användarens roll. Vi har även skapat en metod i vår enum för att få rollens beskrivning. Resultatet blir:

```
JohnDoe har rollen: Administratör
JaneSmith har rollen: Användare
JohnDoe har administratörsbehörighet.
```

Som vi kan se ger enums oss möjligheten att enkelt jämföra olika värden och utföra olika operationer baserat på dessa värden, vilket gör vår kod mer flexibel och lättläst.

## Slutsats

Enums är en kraftfull funktion i Java som ger oss möjligheten att skapa tydliga
och läsbara kodstrukturer. Genom att använda enums kan vi öka typsäkerheten,
förbättra kodens klarhet och minska risken för felaktiga inmatningar. De är
särskilt användbara när vi behöver definiera ett begränsat antal möjliga värden
för en variabel eller ett attribut. Genom att använda exempel med konkreta
outputs har vi sett hur enums kan användas för att representera olika värden
och utföra olika operationer baserat på dessa värden. Med denna djupare
förståelse för enums är du redo att använda denna kraftfulla funktion för att
förbättra dina Java-program.

## Obligatorisk dad joke:

Varför älskar programmerare att använda enum? För att de är bra på att uppräkna saker!