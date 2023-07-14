---
title: Loopar
permalink: loopar/index
nav_order: 118
parent: Home
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
has_children: true
id: 6dcdd3eb-9705-4329-a68f-cf26522ac4c0
school: https://campus.molndal.se/yh
---

# Loopar

Loopar är en viktig del av programmering. De används för att upprepa en viss uppsättning instruktioner eller handlingar ett visst antal gånger eller tills ett specifikt villkor uppfylls. Loopar gör det möjligt att automatisera och effektivisera repetitiva uppgifter i koden.
I denna artikel kommer vi att utforska olika typer av loopar som används inom programmering och fokusera på deras användning i språket Java. Vi kommer att lära oss hur man skapar loopar, vilka villkor som kan användas för att kontrollera loopens beteende och vilka försiktighetsåtgärder man bör ta för att undvika oändliga loopar.

## Typer av loopar

Det finns flera typer av loopar som används i Java. Vi kommer att titta närmare på tre av de vanligaste looparna: `for`, `while` och `do-while`.

### 1. For-loop

En for-loop används när vi vill upprepa en uppsättning instruktioner ett känt antal gånger. Syntaxen för en for-loop är följande:

```java
for (initialisering; villkor; iteration) {
// Kod som ska upprepas
}
```

Här är en förklaring av de olika delarna i en for-loop:

- `initialisering`: Här initieras en räknare eller en variabel som används för att kontrollera antalet iterationer. Detta görs vanligtvis genom att tilldela ett startvärde till räknaren.
- `villkor`: Här definieras villkoret som kontrollerar om loopen ska fortsätta att upprepas eller avslutas. Om villkoret är sant, fortsätter loopen att köras. Om villkoret är falskt, avslutas loopen och programmet fortsätter med koden efter loopen.
- `iteration`: Här specificeras hur räknaren eller variabeln ska ändras vid varje iteration. Vanligtvis ökar eller minskar man värdet på räknaren med ett visst steg.
Här är ett exempel på en for-loop som skriver ut talen 1 till 5:

```java
int i = 1;
do {
System.out.println(i);
i++;
} while (i <= 5);
```

Resultatet av koden ovan kommer att vara detsamma som för for-loopen och while-loopen:

```java
1
2
3
4
5
```

Precis som med while-loopen måste villkoret i do-while-loopen uppdateras manuellt inuti loopen för att undvika en oändlig loop. I exemplet ovan ökar vi värdet på variabeln `i` med 1 vid varje iteration. Resultatet av koden ovan kommer att vara detsamma som för de tidigare looparna:

En viktig skillnad att notera med do-while-loopen är att kodblocket körs minst en gång innan villkoret kontrolleras. Detta gör det lämpligt när vi vill utföra en handling minst en gång, oavsett villkorets värde.

Det är viktigt att vara försiktig med loopar och se till att de inte leder till oändliga loopar. En oändlig loop fortsätter att köra utan att avslutas och kan orsaka programmet att krascha eller bli otillgängligt. För att undvika detta bör vi se till att villkoret i loopen uppdateras korrekt och kommer att bli falskt vid något tillfälle.

Det var en översikt över några vanliga loopar i Java. Det finns flera andra loopar och variationer som kan användas i olika situationer, men dessa är de grundläggande looparna som används oftast. Genom att använda loopar kan vi skapa mer effektiv och återanvändbar kod genom att automatisera upprepningsuppgifter.

### 4. Foreach-loop

En foreach-loop används för att iterera över en samling av objekt eller värden och utföra en handling för varje element i samlingen. Syntaxen för en foreach-loop är följande:

```java
for (var element : samling) {
// Kod som ska utföras för varje element
}
```

Här är en förklaring av de olika delarna i en foreach-loop:

- `element`: En variabel som används för att representera varje element i samlingen när loopen itererar över den.
- `samling`: Den samling av objekt eller värden som ska itereras över, t.ex. en lista, ett fält eller en array.

Här är ett exempel på en foreach-loop som skriver ut varje element i en lista:

```java

List<Integer> numbers = new ArrayList<>(Arrays.asList(1, 2, 3, 4, 5));
for (int number : numbers) {
System.out.println(number);
```

Resultatet av koden ovan kommer att vara:
Foreach-loopar är särskilt användbara när du vill arbeta med varje element i en samling utan att behöva oroa dig för att hantera indexer och iterationsspecifikationer manuellt.

### 5. Nästlade loopar

Nästlade loopar är loopar som finns inuti en annan loop. De används när vi behöver upprepa en uppsättning instruktioner i flera dimensioner. Till exempel kan vi ha en loop som representerar rader och en inre loop som representerar kolumner för att bearbeta en matris. Här är ett exempel på en nästlad loop:

```java
for (int row = 1; row <= 3; row++) {
for (int col = 1; col <= 3; col++) {
System.out.println("Row: " + row + ", Column: " + col);
}
```

med följande resultat:

```java
Row: 1, Column: 1
Row: 1, Column: 2
Row: 1, Column: 3
Row: 2, Column: 1
Row: 2, Column: 2
Row: 2, Column: 3
Row: 3, Column: 1
Row: 3, Column: 2
Row: 3, Column: 3
```

När nästlade loopar används är det viktigt att vara medveten om prestanda och hur många iterationer som utförs. Nästlade loopar kan öka tidskomplexiteten för ett program och leda till längre exekveringstider om de inte används effektivt.

Det finns också andra typer av loopar och looprelaterade koncept i Java, till exempel "break" och "continue" satser som kan användas för att styra loopens beteende. Det är också möjligt att använda rekursion för att uppnå loop-liknande beteende genom att en funktion anropar sig själv upprepade gånger.

Loopar är kraftfulla verktyg som hjälper till att automatisera upprepningsuppgifter och utföra operationer på en samling av objekt eller värden. Genom att välja rätt typ av loop och använda den på rätt sätt kan vi skapa mer effektiv och strukturerad kod.

### 6. While-loop

En while-loop används när du vill upprepa en viss kodblock så länge som ett villkor är sant. Syntaxen för en while-loop är följande:

```java
while (villkor) {
// kod att utföra
```

Här är ett exempel på en while-loop:

```java
int i = 0;
while (i < 5) {
i++;
System.out.println(i);
}
```

I detta exempel kommer loopen att fortsätta att köra så länge som värdet av variabeln `i` är mindre än 5. I varje iteration ökar vi värdet av `i` med 1, och sedan skriver vi ut värdet av `i`. När värdet av `i` blir 5 kommer villkoret att vara falskt och loopen kommer att avslutas.
Det är viktigt att vara försiktig med att använda while-loopar för att undvika oändliga loopar. Se till att villkoret i loopen kommer att bli falskt vid något tillfälle för att undvika att fastna i en oändlig loop.
While-loopar kan vara användbara när vi inte vet exakt hur många gånger vi behöver upprepa en kod, men vi vet att vi vill fortsätta tills ett visst villkor är uppfyllt.

Här är ett exempel på en while-loop som räknar ner från 5 till 1:

```java
// Kod som ska upprepas så länge villkoret är sant
int count = 5;
while (count > 0) {
System.out.println(count);
count--;
```

While-loopar är användbara när du inte vet på förhand hur många iterationer som behövs och loopen ska fortsätta så länge som ett visst villkor är sant.

### 7. Do-while-loop

En do-while-loop är en variation av while-loopen där kodblocket körs minst en gång, oavsett om villkoret är sant eller falskt. Efter den första körningen kontrolleras villkoret, och om det är sant fortsätter loopen att upprepas. Syntaxen för en do-while-loop är följande:

```java
do {
// kod att utföra
} while (villkor);
```

Här är ett exempel på en do-while-loop som ber användaren att mata in ett positivt tal:

```java
int number;
System.out.println("Ange ett positivt tal:");
number = Integer.parseInt(System.console().readLine());
} while (number <= 0);
```

I det här fallet kommer loopen att fortsätta att be användaren om ett positivt tal tills ett giltigt värde matas in.

### 8. Infinita loopar

En oändlig loop är en loop som inte har något villkor för att avslutas och kommer att köra kontinuerligt tills programmet avbryts. Det kan vara användbart i vissa situationer, till exempel när du skapar ett program som körs i en slinga och kontinuerligt utför några uppgifter i bakgrunden. Här är ett exempel på en oändlig loop:

```java
while (true) {
// Kod som körs kontinuerligt
}
```

Observera att en oändlig loop kan leda till att programmet hänger sig om det inte finns något sätt att avbryta loopen manuellt.

### 9. Loopkontrollsatser

I Java finns det också några loopkontrollsatser som kan användas för att styra loopens beteende:

- `break`: Används för att avsluta en loop omedelbart och fortsätta med koden efter loopen.
- `continue`: Används för att hoppa över återstående instruktioner i den aktuella iterationen och fortsätta med nästa iteration av loopen.
Dessa satser kan vara användbara när du vill hoppa över vissa iterationer eller avsluta loopen tidigt baserat på vissa villkor.
Det finns många andra avancerade koncept och tekniker som kan användas i samband med loopar, till exempel nästlade loopar, flerdimensionella loopar, rekursion (en funktion som anropar sig själv), och mycket mer. Loopar är en viktig del av programmering och genom att förstå och använda dem på rätt sätt kan du skapa effektiv och strukturerad kod.

### 10. Foreach-loop

Enforeach-loop, används för att iterera över elementen i en samling eller en array. Den är användbar när du vill bearbeta varje element i en samling utan att behöva hantera indexer eller loopvariabler. Syntaxen för en for-each är följande:

```java
foreach (element : samling) {
// Kod som bearbetar varje element
}
```

Här är ett exempel på en foreach loop som itererar över elementen i en lista av heltal:

```java
for (var number : numbers) {

System.out.println(number);
}
```

Resultatet av koden ovan kommer att vara:

Loopar är särskilt användbara när du behöver gå igenom varje element i en samling utan att bry dig om indexering.

### 11. Nästlade loopar

En nästlad loop är en loop som finns inuti en annan loop. Genom att använda nästlade loopar kan du upprepa en kodblock flera gånger och samtidigt ha mer detaljerad kontroll över hur iterationerna utförs. Till exempel kan du använda nästlade loopar för att bearbeta en tvådimensionell matris eller för att generera mönster. Här är ett exempel på en nästlad loop som genererar ett mönster:

```java
for (int i = 1; i <= 5; i++) {
for (int j = 1; j <= i; j++) {
System.out.print(j + " ");
System.out.println();
```

```java
1 2
1 2 3
1 2 3 4
1 2 3 4 5
```

I detta exempel används en yttre loop för att kontrollera antalet rader och en inre loop för att skriva ut siffrorna i varje rad.

### 12. Rekursion

Rekursion är en teknik där en funktion kallar sig själv för att utföra en uppgift. Detta kan vara användbart när du har en uppgift som kan delas upp i mindre liknande deluppgifter. Ett vanligt exempel på rekursion är beräkningen av det n:te Fibonacci-talet. Här är en rekursiv funktion som beräknar Fibonacci-talet:

```java
int Fibonacci(int n) {
if (n <= 1)
return n;
else
return Fibonacci(n - 1) + Fibonacci(n - 2);
```

Du kan sedan anropa funktionen med önskat värde för att få det motsvarande Fibonacci-talet:

```java
int result = Fibonacci(6);
System.out.println(result); // Resultatet blir 8
```

Rekursion är en kraftfull teknik som används inom programmering för att lösa problem genom att bryta ner dem i mindre delproblem. Det innebär att en funktion kan anropa sig själv för att lösa ett problem. Det är dock viktigt att ha en stoppvillkor för att undvika oändlig rekursion.
Här är ett exempel på rekursion i Java:

```java
public class RekursionExempel {
public static void main(String[] args) {
int resultat = summera(5);
System.out.println("Summan är: " + resultat);
public static int summera(int n) {
if (n == 1) {
return 1;
} else {
return n + summera(n - 1);
}
```

I det här exemplet använder vi en rekursiv funktion `summera` för att beräkna summan av alla heltal från 1 till det givna talet `n`. Funktionen har en stoppvillkor som säger att om `n` är lika med 1, returnera 1. Annars anropar funktionen sig själv med `n-1` och lägger till `n` i resultatet.
När vi kör programmet kommer det att skriva ut summan av alla heltal från 1 till 5, vilket är 15.

Rekursion kan vara svårt att förstå i början, men med övning och erfarenhet kan du behärska denna kraftfulla teknik. Fortsätt att utforska och experimentera med rekursion för att utveckla dina programmeringskunskaper!
Om du vill ha mer inspiration kan du titta på några av följande filmer:

- [Groundhog day](https://www.imdb.com/title/tt0107048/)
- [Happy Death day](https://www.imdb.com/title/tt5308322/)
- [Edge of tomorrow](https://www.imdb.com/title/tt1631867/)
- [Source code](https://www.imdb.com/title/tt0945513/)