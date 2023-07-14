---
title: Filhantering
permalink: filhantering/index
nav_order: 124
parent: Home
author: Marcus Medina
date: 2022-11-16 08:38
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
has_children: true
id: f4960b36-e538-4fd4-9540-ba446993d975
school: https://campus.molndal.se/yh
---

# Filhantering

Vi ska skapa en klass och spara den i hårddisken, sedan ska vi läsa in den.

## Skapa en klass

```java
class Person{
String namn;
int ålder;
public Person(String namn, int ålder){
this.namn = namn;
this.ålder = ålder;
}

public String toString(){ return "Namn: " + namn + " Ålder:" + ålder;}
public String getNamn(){ return namn;}
public int getÅlder(){ return ålder;}
public void setNamn(String namn){ this.namn = namn;}
public void setÅlder(int ålder){ this.ålder = ålder;}
}

```
## Läsa en textfil

För att läsa en textfil, använder vi `FileReader`-klassen. Vi skapar ett nytt objekt av klassen och ger den filnamnet som argument. Sedan kan vi använda `readLine()`-metoden för att läsa in rader från filen.

```java
FileReader fr = new FileReader("filnamn.txt");
String rad = fr.readLine();
while(rad != null){
System.out.println(rad);
rad = fr.readLine();
}
```

## Skriva till en textfil

För att skriva till en textfil, använder vi `FileWriter`-klassen. Vi skapar ett nytt objekt av klassen och ger den filnamnet som argument. Sedan kan vi använda `write()`-metoden för att skriva till filen.

```java
// Skapa en person
Person p = new Person("Luke Skywalker", 23);

// Serialisera personen
String person = p.toString();

// Skapa en ny fil och skriv personen till den
FileWriter fw = new FileWriter("person.txt");
fw.write(person);
fw.close();

// Läs in personen från filen
FileReader fr = new FileReader("person.txt");
String rad = fr.readLine();
ft.close();

// Skapa en ny person från strängen
// genom att dela upp den på Namn: och Ålder:
String[] delar = rad.split("Namn: | Ålder:");
Person p2 = new Person(delar[1], Integer.parseInt(delar[2]));
System.out.println(p2);
```

## Läsa och skriva till en Json-fil

För att läsa och skriva till en Json-fil, använder vi `Gson`-klassen. Vi skapar ett nytt objekt av klassen och ger den filnamnet som argument. Sedan kan vi använda `toJson()`-metoden för att skriva till filen och `fromJson()`-metoden för att läsa från filen.

Lägg till Gson-biblioteket i Maven:

```xml
<dependency>
<groupId>com.google.code.gson</groupId>
<artifactId>gson</artifactId>
<version>2.8.9</version>
</dependency>
```

```java

// Skapa en person
Person p = new Person("Leia Skywalker", 23);

// Serialisera personen
Gson gson = new Gson();
String person = gson.toJson(p);

// Skapa en ny fil och skriv personen till den
FileWriter fw = new FileWriter("person.json");
fw.write(person);
fw.close();

// Läs in personen från filen
FileReader fr = new FileReader("person.json");
Person p2 = gson.fromJson(fr, Person.class);
System.out.println(p2);
```

## Läsa och skriva binära filer

För att läsa och skriva binära filer, använder vi `FileInputStream` och `FileOutputStream`-klasserna. Vi skapar ett nytt objekt av klassen och ger den filnamnet som argument. Sedan kan vi använda `read()` och `write()`-metoderna för att läsa och skriva till filen.

```java
// Skapa en person
Person p = new Person("Han Solo", 33);

// Serialisera personen
ByteArrayOutputStream baos = new ByteArrayOutputStream();
ObjectOutputStream oos = new ObjectOutputStream(baos);
oos.writeObject(p);

// Skapa en ny fil och skriv personen till den
FileOutputStream fos = new FileOutputStream("person.bin");
fos.write(baos.toByteArray());
fos.close();

// Läs in personen från filen
FileInputStream fis = new FileInputStream("person.bin");
ObjectInputStream ois = new ObjectInputStream(fis);
Person p2 = (Person) ois.readObject();
System.out.println(p2);
```

### Läsa och skriva binära filer med Base64

För att läsa och skriva binära filer med Base64, använder vi `Base64`-klassen. Vi skapar ett nytt objekt av klassen och ger den filnamnet som argument. Sedan kan vi använda `encode()` och `decode()`-metoderna för att läsa och skriva till filen.

```java
// Skapa en person

Person p = new Person("Chewbacca", 53);

// Serialisera personen
ByteArrayOutputStream baos = new ByteArrayOutputStream();
ObjectOutputStream oos = new ObjectOutputStream(baos);
oos.writeObject(p);

// Skapa en ny fil och skriv personen till den
FileOutputStream fos = new FileOutputStream("person.bin");
fos.write(Base64.getEncoder().encode(baos.toByteArray()));
fos.close();

// Läs in personen från filen
FileInputStream fis = new FileInputStream("person.bin");
ObjectInputStream ois = new ObjectInputStream(fis);
Person p2 = (Person) ois.readObject();
System.out.println(p2);
```

## Läsa och skriva binära filer med Base64 och GZIP

För att läsa och skriva binära filer med Base64 och GZIP, använder vi `Base64`-klassen och `GZIPOutputStream`-klassen. Vi skapar ett nytt objekt av klassen och ger den filnamnet som argument. Sedan kan vi använda `encode()` och `decode()`-metoderna för att läsa och skriva till filen.

```java
// Skapa en person
Person p = new Person("Obi-Wan Kenobi", 53);

// Serialisera personen
ByteArrayOutputStream baos = new ByteArrayOutputStream();
ObjectOutputStream oos = new ObjectOutputStream(baos);
oos.writeObject(p);

// Skapa en ny fil och skriv personen till den
FileOutputStream fos = new FileOutpu|tStream("person.gzis");
GZIPOutputStream gzos = new GZIPOutputStream(fos);
gos.write(Base64.getEncoder().encode(baos.toByteArray()));
gos.close();

// Läs in personen från filen
FileInputStream fis = new FileInputStream("person.gzis");
GZIPInputStream gzis = new GZIPInputStream(fis);
ObjectInputStream ois = new ObjectInputStream(gzis);
Person p2 = (Person) ois.readObject();
System.out.println(p2);
```

## Övrig filhantering

### Kolla om en fil finns

```java
File f = new File("person.txt");
if(f.exists()){
System.out.println("Filen finns");
}
```

### Skapa en tom fil om den inte finns

```java
File f = new File("person.txt");
if(!f.exists()){
f.createNewFile();
}
```

### Skapa en mapp om den inte finns

```java
File f = new File("mapp");
if(!f.exists()){
f.mkdir();
}
```

## Radera en fil

```java
File f = new File("person.txt");
if(f.exists()){
f.delete();
}
```

## Radera en mapp om den är tom

```java
File f = new File("mapp");
if(f.exists()){
if (f.isDirectory() && f.list().length == 0)
f.delete();
}
```

## Flytta en fil

```java
File f = new File("person.txt");
if(f.exists()){
f.renameTo(new File("person2.txt"));
}
```

## Lista alla filer i en mapp

```java
File f = new File("mapp");
if(f.exists()){
File[] files = f.listFiles();
for(File file : files){
System.out.println(file.getName());
}
}
```

## Lista alla filer i en mapp och dess undermappar

```java
File f = new File("mapp");

if(f.exists()){
File[] files = f.listFiles();
for(File file : files){
if(file.isDirectory()){
File[] subFiles = file.listFiles();
for(File subFile : subFiles){
System.out.println(subFile.getName());
}
}else{
System.out.println(file.getName());
}
}
}
```

## Hitta en fil som med namn som innehåller "Katt"

```java
File f = new File("mapp");
if(f.exists()){
File[] files = f.listFiles();
for(File file : files){
if(file.getName().contains("Katt")){
System.out.println(file.getName());
}
}
}
```

## Hitta en fil som med namn som innehåller "Hemlighet" och radera den

```java
File f = new File("mapp");
if(f.exists()){
File[] files = f.listFiles();
for(File file : files){
if(file.getName().contains("Hemlighet")){
file.delete();
}
}
}
```

## Hitta en fil med texten "Lösenord" i sig

```java
File f = new File("mapp");

if(f.exists()){
File[] files = f.listFiles();
for(File file : files){
if(file.isFile()){
FileReader fr = new FileReader(file);
String rad = fr.readLine();
while(rad != null){
if(rad.contains("Lösenord")){
System.out.println(file.getName());
}
rad = fr.readLine();
}
}
}
}
```

## Få information om filen

```java
File f = new File("person.txt");

if(f.exists()){
System.out.println("Filnamn: " + f.getName());
System.out.println("Filtyp: " + f.getType());
System.out.println("Mapp: " + f.getParent());
System.out.println("Sökväg: " + f.getAbsolutePath());
System.out.println("Storlek: " + f.length());
System.out.println("Senast ändrad: " + f.lastModified());
System.out.println("Är fil: " + f.isFile());
System.out.println("Är mapp: " + f.isDirectory());
System.out.println("Är dold: " + f.isHidden());
System.out.println("Är läsbar: " + f.canRead());
System.out.println("Är skrivbar: " + f.canWrite());
System.out.println("Är exekverbar: " + f.canExecute());
System.out.println("Är samma fil: " + f.equals(new File("person.txt")));
}
```

## Termer och förklaringar

Här följer termer som använts i denna artikel och deras förklaringar.

| Term | Förklaring |
| --- | --- |
| `FileReader` | En klass som används för att läsa textfiler. |
| `FileWriter` | En klass som används för att skriva till textfiler. |
| `Gson` | En klass som används för att läsa och skriva till Json-filer. |
| `Base64` | En klass som används för att läsa och skriva binära filer. |
| `GZIPOutputStream` | En klass som används för att läsa och skriva binära filer med Base64 och GZIP. |
| `ObjectOutputStream` | En klass som används för att läsa och skriva binära filer. |
| `ObjectInputStream` | En klass som används för att läsa och skriva binära filer. |
| `ByteArrayOutputStream` | En klass som används för att läsa och skriva binära filer. |
| `FileInputStream` | En klass som används för att läsa och skriva binära filer. |
| `FileOutputStream` | En klass som används för att läsa och skriva binära filer. |
| `GZIPInputStream` | En klass som används för att läsa och skriva binära filer med Base64 och GZIP. |
| `readLine()` | En metod som används för att läsa en rad från en textfil. |
| `write()` | En metod som används för att skriva till en textfil. |
| `toJson()` | En metod som används för att skriva till en Json-fil. |
| `fromJson()` | En metod som används för att läsa från en Json-fil. |
| `read()` | En metod som används för att läsa från en binär fil. |
| `write()` | En metod som används för att skriva till en binär fil. |
| `encode()` | En metod som används för att läsa från en binär fil med Base64. |
| `decode()` | En metod som används för att skriva till en binär fil med Base64. |
| `close()` | En metod som används för att stänga en fil. |
| `split()` | En metod som används för att dela upp en sträng i en array. |
| `toString()` | En metod som används för att konvertera ett objekt till en sträng. |
| `getNamn()` | En metod som används för att hämta namnet på en person. |
| `getÅlder()` | En metod som används för att hämta åldern på en person. |
| `setNamn()` | En metod som används för att sätta namnet på en person. |
| `setÅlder()` | En metod som används för att sätta åldern på en person. |
| `Person` | En klass som används för att representera en person. |
| `namn` | En variabel som används för att lagra namnet på en person. |
| `ålder` | En variabel som används för att lagra åldern på en person. |
| `p` | En variabel som används för att representera en person. |
| `p2` | En variabel som används för att representera en person. |
| `rad` | En variabel som används för att representera en rad i en textfil. |
| `delar` | En variabel som används för att representera en array av strängar. |
| `fr` | En variabel som används för att representera en textfil. |
| `fw` | En variabel som används för att representera en textfil. |
| `gson` | En variabel som används för att representera en Json-fil. |
| `baos` | En variabel som används för att representera en binär fil. |
| `oos` | En variabel som används för att representera en binär fil. |
| `fos` | En variabel som används för att representera en binär fil. |
| `fis` | En variabel som används för att representera en binär fil. |
| `gzos` | En variabel som används för att representera en binär fil med Base64 och GZIP. |
| `gzis` | En variabel som används för att representera en binär fil med Base64 och GZIP. |
| `ois` | En variabel som används för att representera en binär fil. |
| `fr` | En variabel som används för att representera en textfil. |
| Serialize | Att konvertera ett objekt till en sträng. |
| Deserialize | Att konvertera en sträng till ett objekt. |

## Sammanfattning

Det finns många olika sätt att spara information på, välj den som känns trevligas för dig helt enkelt.