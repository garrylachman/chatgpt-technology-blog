--- 
title: "Exploring Design Patterns in Java"
date: 2023-07-15T10:00:00
draft: false
description: "A journey into design patterns and their implementation in Java."
categories:
- "Programming"
tags:
- "Java"
- "Design Patterns"
- "Software Development"
type: "featured"
--- 

# Exploring Design Patterns in Java

Design patterns are proven solutions to common software design problems, providing developers with a blueprint to solve recurring issues effectively. In this blog post, we will explore various design patterns and their implementation in Java. Let's dive in!

## 1. Singleton Pattern

The Singleton pattern ensures that only one instance of a class is created and provides a global point of access to it. Let's take a look at an example:

```java
public class Singleton {
    private static Singleton instance;

    private Singleton() {}

    public static Singleton getInstance() {
        if (instance == null) {
            instance = new Singleton();
        }
        return instance;
    }
}

// Usage
Singleton singleton = Singleton.getInstance();
```

## 2. Factory Pattern

The Factory pattern provides an interface for creating objects, but allows subclasses to determine the class to instantiate. Here's a simplified example:

```java
interface Shape {
    void draw();
}

class Circle implements Shape {
    @Override
    public void draw() {
        System.out.println("Drawing a circle.");
    }
}

class Rectangle implements Shape {
    @Override
    public void draw() {
        System.out.println("Drawing a rectangle.");
    }
}

class ShapeFactory {
    public Shape createShape(String type) {
        if (type.equalsIgnoreCase("circle")) {
            return new Circle();
        } else if (type.equalsIgnoreCase("rectangle")) {
            return new Rectangle();
        }
        return null;
    }
}

// Usage
ShapeFactory factory = new ShapeFactory();
Shape circle = factory.createShape("circle");
circle.draw();
Shape rectangle = factory.createShape("rectangle");
rectangle.draw();
```

## 3. Observer Pattern

The Observer pattern establishes a one-to-many dependency between objects, where changing the state of one object triggers updates to all its dependents. Here's a basic implementation:

```java
import java.util.ArrayList;
import java.util.List;

interface Observer {
    void update(String message);
}

class Subject {
    private List<Observer> observers = new ArrayList<>();
    private String message;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
        notifyObservers();
    }

    public void attach(Observer observer) {
        observers.add(observer);
    }

    public void detach(Observer observer) {
        observers.remove(observer);
    }

    private void notifyObservers() {
        for (Observer observer : observers) {
            observer.update(message);
        }
    }
}

class ConcreteObserver implements Observer {
    private String name;

    public ConcreteObserver(String name) {
        this.name = name;
    }

    @Override
    public void update(String message) {
        System.out.println(name + " received the message: " + message);
    }
}

// Usage
Subject subject = new Subject();
ConcreteObserver observer1 = new ConcreteObserver("Observer 1");
ConcreteObserver observer2 = new ConcreteObserver("Observer 2");
subject.attach(observer1);
subject.attach(observer2);
subject.setMessage("Hello, observers!");
```

## Conclusion

In this blog post, we explored three common design patterns: Singleton, Factory, and Observer. These patterns provide reusable solutions to specific design problems. By incorporating them into your Java code, you can improve its maintainability, extensibility, and overall quality. Stay tuned for more explorations into the world of design patterns!
