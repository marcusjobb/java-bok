---
title: Komposition över arv
permalink: oop/compbeforeinherit
nav_order: 12
parent: Objektorienterad programmering (OOP)
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
id: 4cf54a57-e5a6-4d7b-8139-cb22ebe9a554
school: https://campus.molndal.se/yh
---

# Komposition över arv

För att förstå hur man implementerar "Komposition över Arv" i praktiken, låt oss titta på ett exempel med Java-kod. Anta att vi har ett program som hanterar karaktärer i en Star Wars-värld. Vi har två klasser: `Character` och `Weapon`.

```java
public class Character {
private String name;
private Weapon weapon;

public Character(String name, Weapon weapon) {
this.name = name;
this.weapon = weapon;
}

public void attack() {
if (weapon != null) {
weapon.use();
} else {
System.out.println(name + " has no weapon.");
}
}
}

```

Ovan skapade vi karaktärer, vapen och använde dem i vår applikation. Vi skapade en instans av `Character` och tilldelade den ett vapen. Sedan anropade vi `attack()`-metoden för att se hur karaktären använder sitt tilldelade vapen.

Nu ska vi skapa vapen.

```java
public interface Weapon {
void use();
}

public class Lightsaber implements Weapon {
@Override
public void use() {
System.out.println("Swinging lightsaber!");
}
}

public class Blaster implements Weapon {
@Override
public void use() {
System.out.println("Shooting blaster!");
}
}
```

I det här exemplet representerar `Character` en karaktär i Star Wars och `Weapon` representerar ett vapen som kan användas av karaktären. Istället för att använda arv för att definiera olika typer av karaktärer med specifika vapen, använder vi komposition för att sammansätta karaktärer med vapen.

En karaktär har ett namn och en referens till ett vapen. I `Character`-klassen finns en metod `attack()` som anropar `use()`-metoden för det tilldelade vapnet. Om karaktären inte har något vapen skrivs ett meddelande ut.

Vi har också en `Weapon`-gränssnitt som definierar en enda metod `use()`. Både `Lightsaber`- och `Blaster`-klasserna implementerar detta gränssnitt och tillhandahåller implementationer för `use()`-metoden.

För att använda detta i vår applikation kan vi skapa instanser av `Character` och `Weapon` och sätta ihop dem genom att tilldela ett vapen till en karaktär.

```java
public class Main {
public static void main(String[] args) {
Weapon lightsaber = new Lightsaber();
Character jedi = new Character("Luke Skywalker", lightsaber);
jedi.attack(); // Output: Swinging lightsaber!

Weapon blaster = new Blaster();
Character bountyHunter = new Character("Boba Fett", blaster);
bountyHunter.attack(); // Output: Shooting blaster!

Character padawan = new Character("Ahsoka Tano", null);
padawan.attack(); // Output: Ahsoka Tano has no weapon.
}
}
```

I `Main`-klassen skapar vi instanser av `Lightsaber` och `Blaster` som representerar vapen. Sedan skapar vi instanser av `Character` och tilldelar respektive vapen till dem. Genom att anropa `attack()`-metoden för varje karaktär kan vi se hur de använder sina tilldelade vapen.

Detta exempel visar hur vi kan använda komposition för att sammansätta klasser och uppnå flexibilitet och återanvändbarhet. Istället för att ha en hierarki av klasser med olika kombinationer av vapen, kan vi enkelt kombinera olika karaktärer och vapen genom att ändra vilka objektinstanser som tilldelas till varje karaktär.

## Sammanfattning

I denna artikel har vi utforskat konceptet "Komposition över Arv" och dess betydelse inom programmering. Vi har sett fördelarna med att använda komposition, såsom flexibilitet, moduläritet, återanvändbarhet och minskat beroende. Vi har också identifierat begränsningar som ökad komplexitet och mer kod att skriva. Genom ett kodexempel har vi sett hur man kan implementera komposition i praktiken med hjälp av Java.

För vidare läsning rekommenderas att utforska olika designmönster och principer inom objektorienterad programmering, såsom SOLID-principerna och Design Patterns-boken av Erich Gamma m.fl.