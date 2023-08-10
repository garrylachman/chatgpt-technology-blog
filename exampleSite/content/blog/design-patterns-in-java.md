---
title: "Design Patterns in Java"
date: 2021-09-15T12:00:00
draft: false
description: "Learn about commonly used design patterns in Java and their implementation"
categories:
- "Programming"
tags:
- "Java"
- "Design Patterns"
type: "featured"
---

# Introduction to Design Patterns

In the world of software development, design patterns are reusable solutions to common problems that occur while designing software systems. They provide a proven way to solve common architectural and design challenges and promote code reusability and maintainability. In this article, we will explore some commonly used design patterns and their implementation in Java.

## Creational Design Patterns

### Singleton Pattern
The Singleton pattern is used to restrict the instantiation of a class to a single object. Its purpose is to ensure that only one instance of a class exists throughout the system.

```java
public class Singleton {
    private static Singleton instance;

    private Singleton() {
        // private constructor to prevent instantiation
    }

    public static Singleton getInstance() {
        if (instance == null) {
            synchronized (Singleton.class) {
                if (instance == null) {
                    instance = new Singleton();
                }
            }
        }
        return instance;
    }
}
```

### Factory Method Pattern
The Factory Method pattern is a creational pattern that provides an interface for creating objects, but allows the subclasses to decide which class to instantiate.

```java
public interface Shape {
    void draw();
}

public class Circle implements Shape {
    @Override
    public void draw() {
        System.out.println("Drawing a Circle");
    }
}

public class Square implements Shape {
    @Override
    public void draw() {
        System.out.println("Drawing a Square");
    }
}

public interface ShapeFactory {
    Shape createShape();
}

public class CircleFactory implements ShapeFactory {
    @Override
    public Shape createShape() {
        return new Circle();
    }
}

public class SquareFactory implements ShapeFactory {
    @Override
    public Shape createShape() {
        return new Square();
    }
}
```

## Structural Design Patterns

### Adapter Pattern
The Adapter pattern converts the interface of a class into another interface that clients expect. It allows classes with incompatible interfaces to work together.

```java
public interface MediaPlayer {
    void play(String fileName);
}

public class AudioPlayer implements MediaPlayer {
    @Override
    public void play(String fileName) {
        // Play audio file
    }
}

public interface AdvancedMediaPlayer {
    void playVideo(String fileName);
}

public class VideoPlayer implements AdvancedMediaPlayer {
    @Override
    public void playVideo(String fileName) {
        // Play video file
    }
}

public class MediaPlayerAdapter implements MediaPlayer {
    private final AdvancedMediaPlayer advancedMediaPlayer;

    public MediaPlayerAdapter(AdvancedMediaPlayer advancedMediaPlayer) {
        this.advancedMediaPlayer = advancedMediaPlayer;
    }

    @Override
    public void play(String fileName) {
        advancedMediaPlayer.playVideo(fileName);
    }
}
```

### Decorator Pattern
The Decorator pattern attaches additional responsibilities to an object dynamically. It provides a flexible alternative to subclassing for extending functionality.

```java
public interface Image {
    void display();
}

public class BasicImage implements Image {
    @Override
    public void display() {
        System.out.println("Displaying basic image");
    }
}

public abstract class ImageDecorator implements Image {
    protected Image decoratedImage;

    public ImageDecorator(Image decoratedImage) {
        this.decoratedImage = decoratedImage;
    }

    public void display() {
        decoratedImage.display();
    }
}

public class BorderDecorator extends ImageDecorator {
    public BorderDecorator(Image decoratedImage) {
        super(decoratedImage);
    }

    @Override
    public void display() {
        super.display();
        System.out.println("Adding border to the image");
    }
}

public class FilterDecorator extends ImageDecorator {
    public FilterDecorator(Image decoratedImage) {
        super(decoratedImage);
    }

    @Override
    public void display() {
        super.display();
        System.out.println("Adding filter to the image");
    }
}
```

## Behavioral Design Patterns

### Observer Pattern
The Observer pattern defines a one-to-many dependency between objects, so that when one object changes state, all its dependents are notified and updated automatically.

```java
public interface Observer {
    void update();
}

public class ConcreteObserver implements Observer {
    @Override
    public void update() {
        // Update logic
    }
}

public interface Subject {
    void attach(Observer observer);
    void detach(Observer observer);
    void notifyObservers();
}

public class ConcreteSubject implements Subject {
    private final List<Observer> observers = new ArrayList<>();

    @Override
    public void attach(Observer observer) {
        observers.add(observer);
    }

    @Override
    public void detach(Observer observer) {
        observers.remove(observer);
    }

    @Override
    public void notifyObservers() {
        for (Observer observer : observers) {
            observer.update();
        }
    }
}
```

### Strategy Pattern
The Strategy pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. It lets the algorithm vary independently from the clients that use it.

```java
public interface SortingStrategy {
    void sort(int[] array);
}

public class BubbleSortStrategy implements SortingStrategy {
    @Override
    public void sort(int[] array) {
        // Bubble sort logic
    }
}

public class QuickSortStrategy implements SortingStrategy {
    @Override
    public void sort(int[] array) {
        // Quick sort logic
    }
}

public class SortContext {
    private SortingStrategy strategy;

    public void setStrategy(SortingStrategy strategy) {
        this.strategy = strategy;
    }

    public void sortArray(int[] array) {
        strategy.sort(array);
    }
}
```

## Conclusion

Design patterns are powerful tools in the hands of software developers. They provide solutions to common design problems, ensure code reusability, maintainability, and promote good software engineering practices. By understanding and utilizing these patterns in your Java projects, you can improve code organization, enhance flexibility, and create a robust software system.

In this article, we covered some popular design patterns - Singleton, Factory Method, Adapter, Decorator, Observer, and Strategy - along with their implementation examples in Java. Consider exploring and implementing these patterns in your software projects to write cleaner, maintainable, and scalable code.
