---
title: Åtkomstmoderator
permalink: oop/atkomstmoderator/index
nav_order: 22
parent: Objektorienterad programmering (OOP)
author: Marcus Medina
date: 2023-07-02
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
available: Java Java
codelanguage: C#
enhance: false
has_children: true
id: 07de5481-b270-41bc-a1aa-454cb9158e19
school: https://campus.molndal.se/yh
---

# Åtkomstmoderator

En åtkomstmodifikator är en modifierare som används för att definiera åtkomsten till en klassmedlem. Detta innebär att du kan bestämma vilka klassmedlemmar som ska vara tillgängliga för andra klasser och vilka som ska vara privata för klassen.

Det finns fyra huvudsakliga åtkomstmodifikatorer i Java:

1. **public**: Tillåter åtkomst till en klassmedlem från alla andra klasser.
2. **private**: Tillåter åtkomst till en klassmedlem endast från den klass där den är deklarerad.
3. **protected**: Tillåter åtkomst till en klassmedlem endast från den klass där den är deklarerad och alla dess underklasser.
4. **ingen åtkomstmodifikator**: Om ingen åtkomstmodifikator anges, är standardåtkomsten "package-private". Det innebär att klassmedlemmen är tillgänglig endast inom samma paket.
5. **final**: Tillåter inte att en klassmedlem ändras efter att den har deklarerats.
6. **package-private** (default): Tillåter åtkomst till en klassmedlem endast inom samma paket.
7. **static**: Tillåter åtkomst till en klassmedlem utan att skapa en instans av klassen.
8. **abstract**: Tillåter inte att en klassmedlem har en implementation.
9. **transient**: Tillåter inte att en klassmedlem sparas när ett objekt serialiseras.
10. **volatile**: Tillåter inte att en klassmedlem cachas av JVM.
11. **synchronized**: Tillåter inte att flera trådar samtidigt ändrar en klassmedlem.
12. **native**: Tillåter inte att en klassmedlem implementeras i Java.
13. **sealed**: Tillåter inte att en klassmedlem ärver från en annan klass.

Exempel:

```java
public class Person {
public String name; // Tillgänglig från alla klasser
private int age; // Endast tillgänglig från Person-klassen
protected String address; // Tillgänglig från Person-klassen och dess underklasser
String phoneNumber; // Endast tillgänglig inom samma paket som Person-klassen
}

```

I exemplet ovan är `name` tillgänglig från alla klasser, `age` är endast tillgänglig från `Person`-klassen, `address` är tillgänglig från `Person`-klassen och dess underklasser, och `phoneNumber` är endast tillgänglig inom samma paket som `Person`-klassen.