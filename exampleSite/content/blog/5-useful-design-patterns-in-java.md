--- 
title: "5 Useful Design Patterns in Java"
date: 2022-01-20T12:00:00
draft: false
description: "In this tutorial, we will explore 5 useful design patterns in Java along with source code examples."
categories: 
  - "Java"
tags: 
  - "Design Patterns"
  - "Object-oriented programming"
  - "Java Development"
type: "featured"
---

# 5 Useful Design Patterns in Java

Design patterns are proven solutions to recurring problems in software design and development. They provide a way to solve common design problems and improve code maintainability, flexibility, and reusability. In this tutorial, we will explore 5 useful design patterns in Java and discuss their implementation with source code examples.

## 1. Singleton Design Pattern

The Singleton design pattern ensures that only one instance of a class is created and provides a global point of access to it. This pattern is useful when we need to have a single instance throughout the application, such as a database connection or a logger.

Here's an example of implementing the Singleton design pattern in Java:

```java
public class Singleton {
    private static Singleton instance;
  
    private Singleton() {
        // Private constructor to prevent instantiation from outside the class
    }
  
    public static Singleton getInstance() {
        if (instance == null) {
            instance = new Singleton();
        }
        return instance;
    }
}
```

## 2. Factory Design Pattern

The Factory design pattern provides an interface for creating objects, but allows subclasses to decide which class to instantiate. It encapsulates object creation logic and decouples object instantiation from the client code.

Here's an example of implementing the Factory design pattern in Java:

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

public class Rectangle implements Shape {
    @Override
    public void draw() {
        System.out.println("Drawing Rectangle");
    }
}

public class ShapeFactory {
    public static Shape createShape(String shapeType) {
        if (shapeType.equalsIgnoreCase("Circle")) {
            return new Circle();
        } else if (shapeType.equalsIgnoreCase("Rectangle")) {
            return new Rectangle();
        } else {
            throw new IllegalArgumentException("Invalid shape type");
        }
    }
}
```

## 3. Observer Design Pattern

The Observer design pattern defines a one-to-many dependency between objects, where changes to one object are automatically reflected in other objects. It allows objects to be notified and updated with new information without being tightly coupled.

Here's an example of implementing the Observer design pattern in Java:

```java
import java.util.ArrayList;
import java.util.List;

public interface Observer {
    void update();
}

public class Subject {
    private List<Observer> observers = new ArrayList<>();
  
    public void attach(Observer observer) {
        observers.add(observer);
    }
  
    public void detach(Observer observer) {
        observers.remove(observer);
    }
  
    public void notifyObservers() {
        for (Observer observer : observers) {
            observer.update();
        }
    }
}

public class ConcreteObserver implements Observer {
    @Override
    public void update() {
        System.out.println("Received an update from the subject");
    }
}
```

## 4. Strategy Design Pattern

The Strategy design pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. It allows the algorithm to vary independently from clients that use it.

Here's an example of implementing the Strategy design pattern in Java:

```java
public interface SortingStrategy {
    void sort(int[] array);
}

public class BubbleSort implements SortingStrategy {
    @Override
    public void sort(int[] array) {
        // Implementation of bubble sort
    }
}

public class InsertionSort implements SortingStrategy {
    @Override
    public void sort(int[] array) {
        // Implementation of insertion sort
    }
}

public class Sorter {
    private SortingStrategy strategy;
  
    public void setStrategy(SortingStrategy strategy) {
        this.strategy = strategy;
    }
  
    public void sort(int[] array) {
        strategy.sort(array);
    }
}
```

## 5. Template Method Design Pattern

The Template Method design pattern provides a way to define the skeleton of an algorithm, but defers the implementation of some steps to subclasses. It allows subclasses to redefine certain steps of the algorithm without changing the overall structure.

Here's an example of implementing the Template Method design pattern in Java:

```java
public abstract class AbstractClass {
    public void templateMethod() {
        operation1();
        operation2();
        operation3();
    }
  
    protected abstract void operation1();
  
    protected abstract void operation2();
  
    protected abstract void operation3();
}

public class ConcreteClass extends AbstractClass {
    @Override
    protected void operation1() {
        // Implementation of operation1
    }
  
    @Override
    protected void operation2() {
        // Implementation of operation2
    }
  
    @Override
    protected void operation3() {
        // Implementation of operation3
    }
}
```

These are just a few examples of the many design patterns available in Java. Understanding and utilizing design patterns can greatly improve the quality and maintainability of your code. So, go ahead and start using these design patterns in your Java projects to make your code more structured and robust!

Feel free to explore more design patterns and their implementation in Java.
