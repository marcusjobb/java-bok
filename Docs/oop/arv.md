---
author: Marcus Medina
title: Arv
nav_order: 8
parent: Objektorienterad programmering (OOP)
grand_parent: Java
permalink: oop/arv
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
enhance: false
codelanguage: C#
author_url: https://marcusmedina.pro
id: c0155dc7-5531-4970-9ff3-938fc8e797a9
school: https://campus.molndal.se/yh
---

// Arv är en princip inom OOP där en klass kan ärva egenskaper och beteenden från en annan överordnad klass, vilket gör det möjligt att återanvända kod och skapa hierarkier av klasser.

// Superklassen är den överordnade klassen som fungerar som en mall eller ritning för de nedärvande klasserna. Subklasserna ärver och kan utöka funktionaliteten från superklassen.
// Exempel:
// Superklassen "Fordon" kan ha egenskaper och beteenden som är gemensamma för alla fordon, t.ex. hastighet och färg.
// Subklasserna "Bil" och "Motorcykel" kan ärva dessa egenskaper och beteenden från "Fordon" och lägga till sina egna unika egenskaper och beteenden, t.ex. antal dörrar och typ av motor.
// På så sätt kan vi återanvända kod och undvika att duplicera samma kod i flera klasser. Vi kan också strukturera och organisera vår kod på ett modulärt sätt, vilket förbättrar underhållbarheten och läsbarheten.
// Arv möjliggör också polymorfism, vilket innebär att en instans av en subklass kan användas där en instans av superklassen förväntas. Detta gör det möjligt att skriva generell kod som kan hantera olika typer av objekt.
// En metod som tar emot en parameter av typen "Fordon" kan användas för att hantera både "Bil" och "Motorcykel" objekt, eftersom de båda är subklasser till "Fordon".
// Arv kan vara en kraftfull teknik för att organisera och strukturera kod, men det kan också leda till problem om det inte används på rätt sätt. Det är viktigt att tänka på följande begränsningar och rekommendationer när du använder arv:
// - Arv bör endast användas när det finns en verklig "är ett" relation mellan superklassen och subklassen. Om relationen bara är en "har ett" relation, kan det vara mer lämpligt att använda komposition istället för arv.
// - Arv kan leda till en hierarki av klasser som kan bli svår att underhålla och förstå. Det är viktigt att noggrant planera och designa hierarkin för att undvika överdriven komplexitet.
// - Om en subklass behöver ändra eller utöka funktionaliteten från superklassen, kan det vara mer lämpligt att använda interfaces eller abstrakta klasser istället för arv. Detta möjliggör flexibilitet och undviker problem med klasshierarkin.
// - Det är viktigt att använda rätt namngivningskonventioner och vara konsekvent i hela klasshierarkin för att underlätta förståelsen och läsbarheten.
// - Det är också viktigt att vara medveten om eventuell kodupprepning i klasshierarkin och undvika det genom att extrahera gemensam funktionalitet till separata metoder eller klasser.
// - Slutligen är det alltid bra att dokumentera klasshierarkin och dess relationer för att underlätta förståelsen och underhållningen av koden.
// Med dessa rekommendationer kan arv vara en kraftfull teknik för att organisera och strukturera kod inom OOP.
## Användningsområden för arv


Arv kan tillämpas i olika situationer och användningsområden inom programmering. Här är några exempel:
1. Skapa en hierarki av klasser där varje klass representerar en mer specialiserad version av den överordnade klassen. Till exempel kan vi ha en superklass "Djur" och subklasser som "Hund", "Katt" och "Fågel" som ärver och utökar funktionaliteten från "Djur".
2. Återanvända kod genom att extrahera gemensam funktionalitet till en överordnad klass och låta subklasserna ärva den. På så sätt undviker vi duplicering av kod och håller vår kod baserad på principen "Don't Repeat Yourself" (DRY).
3. Implementera polymorfism genom att använda superklasser och subklasser. Polymorfism möjliggör att en instans av en subklass kan behandlas som en instans av superklassen, vilket gör att vi kan skriva generell kod som fungerar med olika typer av objekt.
4. Skapa en modellering av verkliga scenarier där hierarkier och relationer mellan olika objekt är viktiga. Till exempel kan vi modellera en hierarki av fordon där vi har en superklass "Fordon" och subklasser som "Bil", "Motorcykel" och "Buss".
Det finns många andra användningsområden för arv beroende på de specifika kraven och designen av programmet. Det är viktigt att noggrant planera och designa hierarkin för att få ut det bästa av arv och undvika problem eller överdriven komplexitet.
## Kodexempel: Arv i Java


Låt oss nu titta på ett kodexempel som visar hur arv kan användas i Java. Vi kommer att använda exemplet med hierarkin av fordon som nämndes tidigare.

```

// Superklassen "Fordon"
class Fordon {
    private int hastighet;
    private String färg;
    public Fordon(int hastighet, String färg) {
        this.hastighet = hastighet;
        this.färg = färg;
    }
    public int getHastighet() {
        return hastighet;
    public String getFärg() {
        return färg;
}
// Subklassen "Bil" ärver från "Fordon"
class Bil extends Fordon {
    private int antalDörrar;
    public Bil(int hastighet, String färg, int antalDörrar) {
        super(hastighet, färg);
        this.antalDörrar = antalDörrar;
    public int getAntalDörrar() {
        return antalDörrar;
// Subklassen "Motorcykel" ärver från "Fordon"
class Motorcykel extends Fordon {
    private String typAvMotor;
    public Motorcykel(int hastighet, String färg, String typAvMotor) {
        this.typAvMotor = typAvMotor;
    public String getTypAvMotor() {
        return typAvMotor;
// Genom arv kan en hierarki av klasser skapas där gemensamma egenskaper och beteenden
// placeras i överordnade klasser och specialiserade egenskaper och beteenden läggs till
// i de nedärvande klasserna. Detta möjliggör återanvändning av kod och effektivisering av
// utvecklingsprocessen.
// Fördelar
// Arv erbjuder flera fördelar inom programmering:
// 1. Kodåteranvändning: Genom att använda arv kan du återanvända kod från överordnade
//    klasser i de nedärvande klasserna. Detta minskar behovet av att skriva samma kod
//    flera gånger och förbättrar därmed kodens underhållbarhet och läsbarhet.
// 2. Modulär design: Arv bidrar till en modulär design av program. Genom att dela upp
//    funktionaliteten i olika klasser och använda arv kan du separera olika ansvarsområden
//    och skapa en hierarki av klasser som är enklare att förstå och hantera.
// 3. Kodens struktur: Arv kan förbättra kodens struktur och organisering. Genom att placera
//    gemensam funktionalitet i överordnade klasser och specialisera den i nedärvande klasser
//    blir koden mer lättläslig och intuitiv.
// 4. Utbytbarhet: Arv möjliggör att objekt av en nedärvande klass kan användas där objekt
//    av en överordnad klass förväntas. Detta skapar möjligheten att behandla objekt på ett
//    enhetligt sätt och gör koden mer flexibel och skalbar.
// Begränsningar
// Trots sina fördelar har arv vissa begränsningar och kompromisser:
// 1. Tätt kopplade klasser: Genom att använda arv skapas en tät koppling mellan överordnade
//    och nedärvande klasser. Om du gör ändringar i överordnade klasser kan det påverka alla
//    nedärvande klasser, vilket kan vara komplicerat att hantera och underhålla.
// 2. Brist på flexibilitet: Arv kan begränsa flexibiliteten i en kodbas. Om hierarkin av
//    klasser inte är korrekt utformad kan det bli svårt att lägga till eller ändra
//    funktionalitet på ett smidigt sätt.
// 3. Ökad komplexitet: När hierarkin av klasser blir djup och komplex kan det bli svårt att
//    förstå och hantera koden. Det är viktigt att noggrant planera och organisera
//    klasshierarkin för att undvika överflödig komplexitet.
// Användningsområden
// Arv kan tillämpas i olika scenarier och användningsområden inom programmering. Här är
// några exempel:
// 1. GUI-ramverk: I grafiska användargränssnittsramverk används arv för att skapa hierarkier
//    av användargränssnittskomponenter. Till exempel kan en överordnad klass "Komponent"
//    innehålla grundläggande egenskaper och beteenden, medan nedärvande klasser som "Knapp"
//    och "Textfält" specialiserar funktionaliteten.
// 2. Spelprogrammering: I spelutveckling kan arv användas för att skapa en hierarki av
//    spelobjekt. Till exempel kan en överordnad klass "Spelobjekt" innehålla gemensamma
//    egenskaper och beteenden, medan nedärvande klasser som "Fiende" och "Spelare"
//    specialiserar funktionaliteten för specifika spelkaraktärer.

```
För att visa hur arv fungerar i Java kan vi använda följande kodexempel:
// En överordnad klass "Karaktär" som representerar en generell spelkaraktär.
class Karaktär {
    String namn;
    int hälsa;
    public Karaktär(String namn, int hälsa) {
        this.namn = namn;
        this.hälsa = hälsa;
    public void attack() {
        System.out.println(namn + " attackerar!");
// En nedärvande klass "Fiende" som specialiserar funktionaliteten för en fiende i spelet.
class Fiende extends Karaktär {
    int styrka;
    public Fiende(String namn, int hälsa, int styrka) {
        super(namn, hälsa);
        this.styrka = styrka;
        System.out.println(namn + " attackerar med styrka " + styrka + "!");
// En nedärvande klass "Spelare" som specialiserar funktionaliteten för spelaren i spelet.
class Spelare extends Karaktär {
    int nivå;
    public Spelare(String namn, int hälsa, int nivå) {
        this.nivå = nivå;
        System.out.println(namn + " attackerar med nivå " + nivå + "!");
public class ArvExempel {
    public static void main(String[] args) {
        // Skapar en fiende och en spelare.
        Fiende fiende = new Fiende("Ondskans mästare", 100, 10);
        Spelare spelare = new Spelare("Hjälten", 100, 5);
        // Anropar attack-metoden för fienden och spelaren.
        fiende.attack();
        spelare.attack();
I detta kodexempel används arv för att skapa en hierarki av spelkaraktärer. Den överordnade klassen "Karaktär" innehåller gemensamma egenskaper och beteenden för alla spelkaraktärer, medan nedärvande klasser som "Fiende" och "Spelare" specialiserar funktionaliteten för specifika spelkaraktärer. Båda nedärvande klasserna har en egen implementation av attack-metoden som anropas när de attackerar.
När vi kör programmet skapar vi en instans av Fiende och en instans av Spelare och anropar---
3. **Databashanterare**: I en databashanterare kan arv användas för att skapa en hierarki av databasobjekt. Till exempel kan en överordnad klass "DatabaseObject" innehålla generella funktioner för att hantera databasoperationer, medan nedärvande klasser som "Table" (Tabell) och "Query" (Fråga) specialiserar funktionaliteten för specifika databasentiteter.
Detta är bara några exempel på användningsområden där arv kan tillämpas inom programmering. Principen om arv kan vara användbar i olika typer av program och system, oavsett om det är grafiska användargränssnitt, spel eller databashantering.
## Exempelkod - Arv i en berättelse


För att bättre förstå arv kan vi titta på ett kodexempel som illustrerar användningen av arv genom en berättelse.
Anta att vi bygger ett spel där vi har olika typer av karaktärer, inklusive fiender och hjältar. Vi kan använda arv för att skapa en hierarki av karaktärsklasser.
// Definiera överordnad klass Karaktär
public class Karaktär {
    public String Namn;
    public int Hälsa;
// Definiera nedärvande klass Fiende
public class Fiende extends Karaktär {
    public void Attackera() {
        // Implementera attacklogik för fiender
// Definiera nedärvande klass Hjälte
public class Hjälte extends Karaktär {
    public void Försvara() {
        // Implementera försvarlogik för hjältar
// Användning av arv i spellogik
Fiende fiende = new Fiende();
fiende.Namn = "Ond skurk";
fiende.Hälsa = 100;
fiende.Attackera();
Hjälte hjälte = new Hjälte();
hjälte.Namn = "Modig hjälte";
hjälte.Hälsa = 100;
hjälte.Försvara();
I det här exemplet skapas en överordnad klass `Karaktär` som har egenskaper för `Namn` (Name) och `Hälsa` (Health). Därefter skapas två nedärvande klasser, `Fiende` (Enemy) och `Hjälte` (Hero), som båda ärver från `Karaktär` och lägger till sina egna specifika metoder (`Attackera` och `Försvara`).
I spellogiken skapar vi en instans av `Fiende` och sätter dess egenskaper (`Namn` och `Hälsa`) och använder sedan dess specifika metod `Attackera`. På samma sätt skapar vi en instans av `Hjälte`, sätter dess egenskaper och använder dess specifika metod `Försvara`.
Genom att använda arv kan vi enkelt skapa en hierarki av karaktärsklasser och använda deras specifika metoder och egenskaper baserat på deras roll i spelet.I detta kodexempel har vi en överordnad klass `Karaktär` som innehåller gemensamma egenskaper för både fiender och hjältar. Genom att ärva från `Karaktär` kan vi definiera specialiserad funktionalitet för fiender och hjältar i deras respektive nedärvande klasser `Fiende` och `Hjälte`. Vi kan sedan skapa instanser av dessa klasser och använda deras unika funktioner, som `Attackera()` för fiender och `Försvara()` för hjältar.
### Utdata


(fiende.Attackera() skriver ut något här)
(hjälte.Försvara() skriver ut något här)
Detta är bara ett enkelt exempel som visar hur arv kan användas för att skapa hierarkier av klasser och dela funktionalitet mellan dem. I praktiken kan arv vara mycket mer kraftfullt och komplext i sina tillämpningar.
## Slutsats


Arv är en viktig princip inom objektorienterad programmering som möjliggör återanvändning av kod och skapar hierarkier av klasser. Genom att använda arv kan vi strukturera och organisera vår kod på ett modulärt sätt, vilket förbättrar underhållbarheten och läsbarheten.
I denna artikel har vi utforskat arvets fördelar, inklusive kodåteranvändning, modulär design och strukturerad kod. Vi har också diskuterat dess begränsningar och utmaningar, såsom tät koppling och ökad komplexitet.
Arv kan tillämpas inom olika områden inom programmering, från grafiska användargränssnittsramverk till spelprogrammering och databashanterare. Genom att förstå och behärska arv kan du utveckla effektivare och mer flexibla program.
För att fördjupa dina kunskaper rekommenderar vi att du fortsätter läsa om arv, utforskar mer avancerade koncept som abstrakt arv och gränssnitt och experimenterar med att använda arv i dina egna programmeringsprojekt.
## TL;DRArv i Java:


Arv i Java är en princip som möjliggör att en klass kan ärva egenskaper och beteenden från en annan klass. Detta möjliggör kodåteranvändning och skapar en hierarki av klasser. 
För att implementera arv i Java används nyckelordet "extends". En klass kan ärva från en annan klass genom att använda extends-nyckelordet och ange namnet på den överordnade klassen. Klassen som ärver kallas subklassen och den överordnade klassen kallas superklassen.
Här är ett exempel som visar hur arv fungerar i Java:
// Superklass
class Djur {
    public void sägLjud() {
        System.out.println("Djuret säger ljudet");
// Subklass som ärver från superklassen Djur
class Hund extends Djur {
        System.out.println("Hunden säger voff");
public class Main {
        Hund hund = new Hund();
        hund.sägLjud(); // Output: Hunden säger voff
I exemplet ovan har vi en superklass "Djur" och en subklass "Hund". Subklassen "Hund" ärver egenskaper och beteenden från superklassen "Djur". Subklassen kan också överlagra metoder från superklassen för att ändra deras beteende.
I main-metoden skapar vi en instans av subklassen "Hund" och anropar metoden "sägLjud()". Eftersom subklassen har överlagrat metoden, kommer den att visa det specifika ljudet för hundar.
Arv möjliggör också flera nivåer av hierarkier. En subklass kan i sin tur fungera som superklass för en annan subklass. På så sätt kan vi bygga mer komplexa strukturer av klasser och utnyttja arvets fördelar.
Det är viktigt att notera att Java inte stöder flerfaldig arv, vilket innebär att en klass inte kan ärva från flera superklasser samtidigt. Java använder istället gränssnitt (interface) för att uppnå liknande funktionalitet. Gränssnitt låter en klass implementera flera gränssnitt samtidigt, vilket ger flexibilitet och kodåteranvändning.