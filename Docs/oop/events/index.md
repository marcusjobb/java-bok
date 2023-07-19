---
title: Events
permalink: oop/events/index
nav_order: 18
parent: Objektorienterad programmering (OOP)
grand_parent: Java
author: Marcus Medina
date: 2022-11-20 02:59
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
enhance: false
has_children: true
id: 8f3f3ae4-2872-400e-92b1-1f2a454a589c
school: https://campus.molndal.se/yh
---

# Events
I denna översikt kommer vi att utforska konceptet händelser i C#. Händelser är en funktion som låter oss reagera på händelser som inträffar under körningen av vårt program.
## Vad är händelser?

Händelser kan ses som en mekanism för att anropa metoder när något specifikt händer i programmet. Istället för att använda if-satser eller liknande för att kontrollera och reagera på olika scenarier kan vi definiera händelser som triggas när en händelse uppstår.
En händelse kan vara något som att en knapp klickas, en fil ändras, en timer slår till eller ett objekt uppdateras. Genom att använda händelser kan vi separera logiken för att hantera händelsen från den del av koden som utlöser händelsen.
## Användningsområden för händelser

Händelser kan vara till nytta i en mängd olika scenarier, inklusive:
1. Grafiska användargränssnitt (GUI): I GUI-applikationer kan händelser användas för att hantera händelser som knappklickar, musinmatning eller fönsterfokusändringar.
2. Spelprogrammering: I spel kan händelser användas för att hantera händelser som spelarens interaktion, karaktärsdöd eller nivåuppgradering.
3. Multitrådad programmering: I flertrådade applikationer kan händelser användas för att synkronisera och kommunicera mellan olika trådar.
4. Kommunikation med externa enheter: Händelser kan användas för att hantera händelser som inträffar vid kommunikation med externa enheter eller system, t.ex. sensorer eller nätverksanslutningar.
## Kodexempel

För att ge dig en bättre förståelse för hur händelser fungerar i C# låt oss titta på ett exempel:

```java
import java.util.ArrayList;
import java.util.List;
// Definierar en händelsehanterare
interface EventHandler {
void handleEvent(String event);
}
// Definierar en händelsekälla
class EventSource {
private List<EventHandler> eventHandlers = new ArrayList<>();
// Registrerar en händelsehanterare
public void registerEventHandler(EventHandler eventHandler) {
eventHandlers.add(eventHandler);
}
// Utlöser händelsen
public void triggerEvent(String event) {
for (EventHandler eventHandler : eventHandlers) {
eventHandler.handleEvent(event);
}
// En exempelklass som implementerar EventHandler
class ExampleEventHandler implements EventHandler {
@Override
public void handleEvent(String event) {
System.out.println("Händelse mottagen: " + event);
public class Main {
public static void main(String[] args) {
// Skapar en händelsekälla
EventSource eventSource = new EventSource();
// Skapar en händelsehanterare
EventHandler eventHandler = new ExampleEventHandler();
// Registrerar händelsehanteraren hos händelsekällan
eventSource.registerEventHandler(eventHandler);
// Utlöser en händelse
eventSource.triggerEvent("En händelse har inträffat");

```
I detta exempel definierar vi en händelsehanterare genom att skapa ett gränssnitt `EventHandler` som har en metod `handleEvent`. Vi definierar också en händelsekälla `EventSource` som kan registrera händelsehanterare och utlösa händelser. Vi skapar en exempelklass `ExampleEventHandler` som implementerar `EventHandler` och skriver ut en meddelande när en händelse mottas.
I `Main`-klassen skapar vi en instans av `EventSource`, en instans av `ExampleEventHandler` och registrerar händelsehanteraren hos händelsekällan. Sedan utlöser vi en händelse genom att anropa `triggerEvent`-metoden på händelsekällan. När händelsen utlöses kommer `ExampleEventHandler` att reagera genom att skriva ut ett meddelande.
Detta är bara ett grundläggande exempel på hur händelser kan användas i Java. Det finns många andra möjligheter och användningsområden för händelser i Java-programmering.

``````java
import java.util.*;
public class Hero {
private List<LevelUpListener> levelUpListeners = new ArrayList<>();
private List<DiedListener> diedListeners = new ArrayList<>();
private int level = 1;
private int XP = 0;
public int getLevel() {
return level;
public int getXP() {
return XP;
public int getMaxXP() {
return level * 100;
public void increaseXP(int amount) {
XP += amount;
if (XP >= getMaxXP()) {
level++;
onLevelUp();
public void die() {
onDied();
public void addLevelUpListener(LevelUpListener listener) {
levelUpListeners.add(listener);
public void addDiedListener(DiedListener listener) {
diedListeners.add(listener);
private void onLevelUp() {
for (LevelUpListener listener : levelUpListeners) {
listener.onLevelUp();
private void onDied() {
for (DiedListener listener : diedListeners) {
listener.onDied();
public interface LevelUpListener {
void onLevelUp();
public interface DiedListener {
void onDied();
public class Program {
Hero hero = new Hero();
hero.addLevelUpListener(new LevelUpListener() {
@Override
public void onLevelUp() {
System.out.println("Hjälten har nått en ny nivå!");
}
});
hero.addDiedListener(new DiedListener() {
public void onDied() {
System.out.println("Hjälten har dött!");
hero.increaseXP(100);
hero.die();
I detta exempel har vi en klass som heter `Hero`, som representerar en spelkaraktär. Klassen har två listor, `levelUpListeners` och `diedListeners`, som innehåller lyssnare för händelserna `LevelUp` och `Died`.
När hjältens erfarenhetspoäng (`XP`) ökar, kontrolleras om XP överstiger det maximala värdet (`getMaxXP()`). Om så är fallet, ökar hjältens nivå och `onLevelUp()`-metoden anropas för varje lyssnare i `levelUpListeners`. På samma sätt, när hjältens hälsopoäng (`HP`) når 0 eller mindre, anropas `onDied()`-metoden för varje lyssnare i `diedListeners`.
I `Program`-klassen skapar vi en instans av `Hero` och lägger till anonyma klasser som implementerar `LevelUpListener` och `DiedListener` för att definiera beteendet för varje händelse. När vi sedan ökar hjältens XP eller simulerar dess död, kommer de tillhörande metoderna att anropas och en meddelandetext skrivs ut i konsolen.
Detta är bara ett grundläggande exempel för att illustrera hur händelselyssnare kan användas i Java. I praktiken kan de vara mycket kraftfulla och användas för att skapa interaktion och dynamik i programmet.
## Summering

Händelselyssnare i Java möjliggör reaktioner på händelser under programkörningen. Genom att separera händelsehanteringen från den del av koden som utlöser händelsen, kan vi skapa mer modulära och underhållbara program. Händelselyssnare kan användas i olika scenarier, inklusive GUI-programmering, spelutveckling och multitrådad programmering. Genom att följa principerna om ren kod (Clean Code) kan vi skriva läsbar och effektiv kod som är lätt att förstå och underhålla.