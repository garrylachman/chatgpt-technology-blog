--- 
title: "Exploring Design Patterns in Java"
date: 2021-10-10T12:00:00
draft: false
description: "Learn about design patterns in Java and how they can be applied in software development."
categories: 
- "Programming"
tags: 
- "Java"
- "Design Patterns"
type: "featured"
---

# Exploring Design Patterns in Java

Design patterns are reusable solutions to common problems in software development. They provide a way to create flexible and maintainable code by capturing best practices and proven approaches. In this blog post, we will explore some commonly used design patterns in Java and how they can be implemented.

## 1. Singleton Pattern

The Singleton pattern ensures that only a single instance of a class is created and provides a global point of access to it. It is useful in scenarios where we want to restrict the instantiation of a class to a single object.

```java
public class Singleton {
    private static Singleton instance;
    
    private Singleton() {
        // Private constructor to prevent instantiation
    }
    
    public static Singleton getInstance() {
        if (instance == null) {
            instance = new Singleton();
        }
        return instance;
    }
}
```

Usage:

```java
Singleton singleton = Singleton.getInstance();
```

## 2. Factory Pattern

The Factory pattern is used to create objects without exposing the creation logic to the client. It provides a way to delegate the object creation to subclasses or concrete implementation classes.

```java
public interface Shape {
    void draw();
}

public class Circle implements Shape {
    @Override
    public void draw() {
        System.out.println("Drawing Circle");
    }
}

public class Square implements Shape {
    @Override
    public void draw() {
        System.out.println("Drawing Square");
    }
}

public class ShapeFactory {
    public Shape createShape(String type) {
        if (type.equalsIgnoreCase("circle")) {
            return new Circle();
        } else if (type.equalsIgnoreCase("square")) {
            return new Square();
        }
        throw new IllegalArgumentException("Invalid shape type");
    }
}
```

Usage:

```java
ShapeFactory shapeFactory = new ShapeFactory();
Shape circle = shapeFactory.createShape("circle");
circle.draw();

Shape square = shapeFactory.createShape("square");
square.draw();
```

## 3. Observer Pattern

The Observer pattern defines one-to-many dependencies between objects, where the change in one object triggers the update in all its dependents. It allows objects to be notified and updated about the changes made in another object.

```java
import java.util.ArrayList;
import java.util.List;

public interface Subject {
    void registerObserver(Observer observer);
    void removeObserver(Observer observer);
    void notifyObservers();
}

public interface Observer {
    void update();
}

public class WeatherStation implements Subject {
    private List<Observer> observers = new ArrayList<>();
    private int temperature;
    
    public int getTemperature() {
        return temperature;
    }
    
    public void setTemperature(int temperature) {
        this.temperature = temperature;
        notifyObservers();
    }
    
    @Override
    public void registerObserver(Observer observer) {
        observers.add(observer);
    }
    
    @Override
    public void removeObserver(Observer observer) {
        observers.remove(observer);
    }
    
    @Override
    public void notifyObservers() {
        for (Observer observer : observers) {
            observer.update();
        }
    }
}

public class Smartphone implements Observer {
    private Subject subject;
    
    public Smartphone(Subject subject) {
        this.subject = subject;
        this.subject.registerObserver(this);
    }
    
    @Override
    public void update() {
        int temperature = ((WeatherStation) subject).getTemperature();
        System.out.println("Smartphone: Temperature updated - " + temperature);
    }
}

public class Desktop implements Observer {
    private Subject subject;
    
    public Desktop(Subject subject) {
        this.subject = subject;
        this.subject.registerObserver(this);
    }
    
    @Override
    public void update() {
        int temperature = ((WeatherStation) subject).getTemperature();
        System.out.println("Desktop: Temperature updated - " + temperature);
    }
}
```

Usage:

```java
WeatherStation weatherStation = new WeatherStation();
Smartphone smartphone = new Smartphone(weatherStation);
Desktop desktop = new Desktop(weatherStation);

weatherStation.setTemperature(25);
```

These are just a few examples of commonly used design patterns in Java. Understanding and applying these design patterns can greatly improve the quality and maintainability of your code. It's important to choose the appropriate design pattern based on the problem you are trying to solve.

I hope you found this blog post helpful in exploring design patterns in Java. Happy coding!
