---
title: Abstrakta klasser
permalink: oop/polymorfism/abstraktaklasser/index
nav_order: 2
parent: Polymorfism
grand_parent: Java
author: Marcus Medina
date: 2022-11-19 08:17
layout: default
author_github: https://github.com/marcusjobb
author_url: https://marcusmedina.pro
codelanguage: C#
has_children: true
id: 41b84e28-8a7e-4b61-a87d-ca4642273d4f
school: https://campus.molndal.se/yh
---

# Abstrakta klasser
Abstrakta klasser är klasser som innehåller både kod och abstrakta metoder. De fungerar som en kombination av ett interface och en klass.

<details open markdown="block">
<summary>
Innehållsförteckning
</summary>
{: .text-delta }
1. TOC
{:toc}
</details>
## Beskrivning

En abstrakt klass används för att andra klasser ska kunna ärva från den. Det går inte att skapa objekt av en abstrakt klass, utan den används endast för att andra klasser ska kunna ärva från den.

## Exempel

Vi skapar en klass kallad Shape, i den har vi metoden area(). Det ser enkelt ut men det är effektfullt.

```java
// Abstrakt klass för geometriska former
public abstract class Shape {
// Abstrakt metod för att beräkna arean
public abstract double area();
}

// Underklass för cirkel som ärver från Shape
public class Circle extends Shape {
private double radius; // Radien på cirkeln

// Konstruktor för att skapa en cirkel med given radie
public Circle(double radius) {
this.radius = radius;
}

// Getter för att hämta radien på cirkeln
public double getRadius() {
return radius;
}

// Setter för att sätta radien på cirkeln
public void setRadius(double radius) {
this.radius = radius;
}

// Överskuggning av area-metoden för att beräkna arean av cirkeln
@Override
public double area() {
return Math.PI * radius * radius;
}
}

// Underklass för rektangel som ärver från Shape
public class Rectangle extends Shape {
private double width; // Bredden på rektangeln
private double height; // Höjden på rektangeln

// Konstruktor för att skapa en rektangel med given bredd och höjd
public Rectangle(double width, double height) {
this.width = width;
this.height = height;
}

// Getter för att hämta bredden på rektangeln
public double getWidth() {
return width;
}

// Setter för att sätta bredden på rektangeln
public void setWidth(double width) {
this.width = width;
}

// Getter för att hämta höjden på rektangeln
public double getHeight() {
return height;
}

// Setter för att sätta höjden på rektangeln
public void setHeight(double height) {
this.height = height;
}

// Överskuggning av area-metoden för att beräkna arean av rektangeln
@Override
public double area() {
return width * height;
}
}
```

Vi kan nu skapa en array av typen Shape och lägga in objekt av typen Circle och Rectangle i den. Vi kan sedan loopa igenom arrayen och anropa area-metoden på varje objekt.

```java
// Skapar en array av typen Shape
Shape[] shapes = new Shape[2];

// Lägger in ett objekt av typen Circle i arrayen
shapes[0] = new Circle(5);

// Lägger in ett objekt av typen Rectangle i arrayen
shapes[1] = new Rectangle(5, 10);

// Loopar igenom arrayen och anropar area-metoden på varje objekt
for (Shape shape : shapes) {
System.out.println(shape.area());
}
```

Detta gör att vi kan använda oss av polymorfism för att beräkna arean av olika geometriska former. Coolt va!

## Referenser

- [Abstrakta klasser](https://docs.microsoft.com/en-us/dotnet/Java/programming-guide/classes-and-structs/abstract-classes)
- [Abstract class W3Schools](https://www.w3schools.com/cs/cs_abstract.php)