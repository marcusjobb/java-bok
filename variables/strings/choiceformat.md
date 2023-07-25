# ChoiceFormat - Skapa Magiska Textuttryck som Aldrig Tråkar Ut Dig!

## Introduktion

Nu ska vi kolla på ChoiceFormat! Det är som att trolla med texten och göra den levande! Med ChoiceFormat kan du skapa fantastiska textuttryck som anpassas till olika värden och förhållanden. Det är precis som att ha en kameleont i din kod som ändrar färg beroende på situationen. Hur coolt är inte det?

<div style="text-align:center">
<img src="funnydiagram.png">
</div>

## Förkunskaper

För att kunna använda Choiceformat behöver du ha förståelse för [arrays](../../datastructures/arrays.md). För det kommer att krävas.

## Vad är ChoiceFormat?

ChoiceFormat är en riktigt cool klass i Java som låter oss matcha värden i en angiven intervall med förutbestämda textsträngar. Det är som att ha ett diagram där du bestämmer vilken textsträng som ska visas beroende på det numeriska värdet. Detta är oerhört användbart när du vill skapa olika textuttryck baserat på variabler eller tillstånd.

## TL;DR

ChoiceFormat i Java är ett kraftfullt verktyg för att skapa textsträngar som matchar värden i en angiven intervall med fördefinierade textsträngar. Det gör det möjligt för oss att skapa levande och dynamiska meddelanden beroende på variabler.

## När du läst detta ska du kunna

- Förstå vad ChoiceFormat är och dess användningsområden i Java.
- Använda ChoiceFormat för att skapa dynamiska och anpassningsbara textsträngar.
- Skapa egna formatmallar för att matcha olika värden med relevanta textsträngar.
- Använda ChoiceFormat för att ge liv åt dina applikationsmeddelanden.

## Hur Fungerar ChoiceFormat?

ChoiceFormat fungerar genom att definiera ett formatmönster som innehåller olika värdeområden och motsvarande textsträngar för varje område. När vi har skapat vårt formatmönster, kan vi använda ChoiceFormat för att matcha värden mot dessa områden och få ut rätt textsträng baserat på det matchade intervallet.

## Exempelkod - ChoiceFormat i Praktiken

Så du har kanske hört talas om olika energidrycker, och du undrar vilken som ger dig mest "coolt" uppsving? Men vänta, jag måste ge dig en varning - för mycket koffein kan orsaka sömnlöshet, och då kommer du att vilja läsa den här [Creepypastan om det ryska sömnexperimentet](https://www.creepypasta.se/creepypodden/creepypodden-det-ryska-somnexperimentet/) för att försöka somna igen! 😱 Men vi behöver inte bli skrämda, låt oss bara dyka in i det roliga med ChoiceFormat och ta reda på vilka drycker som är "coola"!

**Warning**
Känsliga läsare varnas för att läsa "Det Ryska Sömnexperimentet", det är äckligt som f... 

Tillbaka till ämnet! Vi ska skapa ett program som låter oss jämföra olika energidrycker och deras koffeinhalten. Vi ska sedan använda ChoiceFormat för att skapa dynamiska textsträngar som matchar koffeinhalten med olika "coola" grader. Låt oss börja med att skapa en array med olika drycker och deras koffeinhalten:

Först, låt oss definiera våra "coola" grader för att matcha koffeinhalten:

- Helt ok
- Cool
- Najs
- F*ck Yeah!
- RAWR
- HOLY SHIT
- AAGGHH
- KAFFEKAFFEKAFFE
- OMGOMGOMG
- Var är jag
- Vad är det för datum iår?

Nu ska vi skapa vårt ChoiceFormat-mönster och definiera våra intervall och motsvarande "coola" grader:

```java
import java.text.ChoiceFormat;

public class CoolnessLevel {
    public static void main(String[] args) {
        double[] caffeineLevels = {0, 30, 55, 80, 150, 200};
        String[] coolnessGrades = {"Helt ok", "Cool", "Najs", "F*CK Yeah!", "RAWR", "HOLY SHIT", "AAGGHH", "KAFFEKAFFEKAFFE", "OMGOMGOMG", "Var är jag", "Vad är det för datum iår?"};

        // I det här fallet när caffeineLevels har färre värden än
        // coolnessGrades, kommer standardlogiken att använda det närmaste värdet
        // för att avgöra vilken coolhetsgrad som ska användas. Det betyder att de
        // högsta värdena i caffeineLevels och över det kommer att få
        // coolhetsgraden "Vad är det för datum iår?", och de lägsta värdena och
        // under det kommer att få coolhetsgraden "Helt ok".



        ChoiceFormat coolnessFormat = new ChoiceFormat(caffeineLevels, coolnessGrades);

        // Ny lista med olika drycker för bättre coolhetsvariation
        String[] drinks = {
            "Monster Energy", // 160 mg koffein per burk
            "Red Bull", // 80 mg koffein per burk
            "Celsius Kiwi Guava", // 200 mg koffein per burk
            "Nocco Golden Grape Del Sol", // 180 mg koffein per burk
            "Vitamin Well Focus", // 75 mg koffein per flaska (500 ml)
            "Clean Drink Classic Raspberry", // 180 mg koffein per burk
            "Bang Energy Rainbow Unicorn", // 160 mg koffein per burk
            "Lohilo Paradise Kiwi", // 180 mg koffein per burk
            "Reign Melon Mania", // 200 mg koffein per burk
            "Pro Brands Passion Fruit", // 105 mg koffein per burk
            "Ramlösa Funktionsvatten Fokus", // 105 mg koffein per burk (330 ml)
            "Powerking Venice Beach Watermelon BCAA", // 180 mg koffein per burk
            "Clean Drink Vattenmelon", // 180 mg koffein per burk
            "Naia Wild Tropic", // 200 mg koffein per burk
            "Wolverine Energy Original" // 80 mg koffein per burk (250 ml)
        };

        int[] caffeinePerCan = {160, 80, 200, 180, 75, 180, 160, 180, 200, 105, 105, 180, 180, 200, 80};

        for (int i = 0; i < drinks.length; i++) {
            System.out.println(drinks[i] + ": " + coolnessFormat.format(caffeinePerCan[i]) + "!");
        }
    }
}
```

## Anpassa Dina Egna Textuttryck

ChoiceFormat ger oss friheten att skapa våra egna formatmallar och definiera vilka textsträngar som ska matcha olika värden. Detta innebär att du kan anpassa dina meddelanden precis som du vill ha dem. Var kreativ och låt din kod glänsa med levande och roliga textsträngar som förtrollar dina användare!

Exempelvis betygsättning
    
```java
    int[] scores = {0, 20, 40, 60, 80, 100};
    String[] grades = {"Har du läst på?", "Du kan bättre", "Du är godkänd", "Du är bra", "Du är jättebra", "Du är bäst!", "Guru level 9000!"};
```
## Sammanfattning

ChoiceFormat är som en magisk trollstav för att skapa dynamiska textsträngar i Java. Genom att matcha värden med förutbestämda textsträngar ger det oss möjligheten att skapa levande och coolt anpassningsbara meddelanden beroende på variabler och värden. Så låt oss omfamna ChoiceFormat och låta våra textuttryck bli så färgstarka som en regnbåge i koden!

## Obligatorisk dad joke:

Varför användr Javakodare ChoiceFormat när de åker ut till havs?

För att kunna se "val"-arna :D 