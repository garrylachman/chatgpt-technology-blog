--- 
title: "10 Useful Design Patterns in Java"
date: 2022-10-10T08:00:00
draft: false
description: "Learn about 10 commonly used design patterns in Java with code examples and explanations."
categories: 
- "Programming"
tags: 
- "Java"
- "Design Patterns"
type: "featured"
---

# 10 Useful Design Patterns in Java

Design patterns are reusable solutions to commonly occurring problems in software design. They provide proven approaches for solving specific design problems, making code more flexible, maintainable, and scalable. In this article, we will explore 10 useful design patterns in Java with code examples and explanations.

## 1. Singleton

The Singleton pattern ensures that only one instance of a class is created throughout the application. This can be useful when we need to limit the number of instances or when there is a need for a centralized point of access to a particular resource.

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

## 2. Observer

The Observer pattern allows objects to notify and update other objects when their state changes. It promotes loose coupling between objects and enables them to communicate without being directly dependent on each other.

```java
import java.util.Observable;
import java.util.Observer;

public class Subject extends Observable {
    public void doSomething() {
        setChanged();
        notifyObservers();
    }
}

public class ObserverImpl implements Observer {
    public void update(Observable o, Object arg) {
        // Handle the update logic here
    }
}
```

## 3. Factory Method

The Factory Method pattern provides an interface for creating objects but allows subclasses to decide which class to instantiate. It separates the object creation logic from the client code, making it easier to add new product types without modifying existing code.

```java
public interface Product {
    void doSomething();
}

public class ConcreteProduct implements Product {
    public void doSomething() {
        // Implementation goes here
    }
}

public abstract class Creator {
    public abstract Product createProduct();
}

public class ConcreteCreator extends Creator {
    public Product createProduct() {
        return new ConcreteProduct();
    }
}
```

## 4. Decorator

The Decorator pattern allows behavior to be added dynamically to an object by wrapping it in a decorator class. It provides a flexible alternative to subclassing and allows new functionality to be added without changing the core implementation.

```java
public interface Component {
    void doSomething();
}

public class ConcreteComponent implements Component {
    public void doSomething() {
        // Implementation goes here
    }
}

public abstract class Decorator implements Component {
    private Component component;

    public Decorator(Component component) {
        this.component = component;
    }

    public void doSomething() {
        component.doSomething();
    }
}

public class ConcreteDecorator extends Decorator {
    public ConcreteDecorator(Component component) {
        super(component);
    }

    public void doSomething() {
        // Additional functionality goes here
        super.doSomething();
    }
}
```

## 5. Iterator

The Iterator pattern provides a way to access the elements of an aggregate object sequentially without exposing its underlying representation. It decouples the traversal logic from the aggregate object, allowing multiple traversals to occur independently.

```java
public interface Iterator<T> {
    boolean hasNext();
    T next();
}

public interface Aggregate {
    Iterator<?> createIterator();
}

public class ConcreteIterator<T> implements Iterator<T> {
    // Implementation goes here
}

public class ConcreteAggregate implements Aggregate {
    public Iterator<?> createIterator() {
        return new ConcreteIterator<>();
    }
}
```

## 6. Strategy

The Strategy pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. It allows a client object to switch between different algorithms at runtime without altering the object's structure.

```java
public interface Strategy {
    void doSomething();
}

public class ConcreteStrategy1 implements Strategy {
    public void doSomething() {
        // Implementation goes here
    }
}

public class ConcreteStrategy2 implements Strategy {
    public void doSomething() {
        // Implementation goes here
    }
}

public class Context {
    private Strategy strategy;

    public Context(Strategy strategy) {
        this.strategy = strategy;
    }

    public void executeStrategy() {
        strategy.doSomething();
    }
}
```

## 7. Template Method

The Template Method pattern defines the skeleton of an algorithm in a method, allowing subclasses to provide concrete implementations for certain steps. It promotes code reusability and flexibility in defining the overall algorithm while providing customization points for specific steps.

```java
public abstract class AbstractClass {
    public void templateMethod() {
        // Step 1
        step1();

        // Step 2
        step2();

        // Step 3
        step3();
    }

    protected abstract void step1();
    protected abstract void step2();
    protected abstract void step3();
}

public class ConcreteClass extends AbstractClass {
    protected void step1() {
        // Implementation goes here
    }

    protected void step2() {
        // Implementation goes here
    }

    protected void step3() {
        // Implementation goes here
    }
}
```

## 8. Proxy

The Proxy pattern provides a surrogate or placeholder for another object to control access to it. It can be used to add additional behavior when accessing an object, such as caching, security checks, or lazy initialization.

```java
public interface Image {
    void display();
}

public class RealImage implements Image {
    private String filename;

    public RealImage(String filename) {
        this.filename = filename;
        loadFromDisk();
    }

    private void loadFromDisk() {
        // Implementation goes here
    }

    public void display() {
        // Implementation goes here
    }
}

public class ProxyImage implements Image {
    private RealImage realImage;
    private String filename;

    public ProxyImage(String filename) {
        this.filename = filename;
    }

    public void display() {
        if (realImage == null) {
            realImage = new RealImage(filename);
        }
        realImage.display();
    }
}
```

## 9. Command

The Command pattern encapsulates a request as an object, allowing parameterization of clients with different requests, queueing, or logging of requests, and supporting operations undo and redo. It promotes loose coupling between sender and receiver, allowing them to evolve independently.

```java
public interface Command {
    void execute();
}

public class ConcreteCommand implements Command {
    private Receiver receiver;

    public ConcreteCommand(Receiver receiver) {
        this.receiver = receiver;
    }

    public void execute() {
        receiver.doSomething();
    }
}

public class Receiver {
    public void doSomething() {
        // Implementation goes here
    }
}

public class Invoker {
    private Command command;

    public void setCommand(Command command) {
        this.command = command;
    }

    public void executeCommand() {
        command.execute();
    }
}
```

## 10. Builder

The Builder pattern separates the construction of a complex object from its representation, allowing the same construction process to create different representations. It provides a step-by-step approach to create objects, providing flexibility and ease of use.

```java
public class Product {
    private String part1;
    private String part2;

    public void setPart1(String part1) {
        this.part1 = part1;
    }

    public void setPart2(String part2) {
        this.part2 = part2;
    }

    // Other getters and setters
}

public interface Builder {
    void buildPart1();
    void buildPart2();
    Product getResult();
}

public class ConcreteBuilder implements Builder {
    private Product product;

    public void buildPart1() {
        product.setPart1("Part 1");
    }

    public void buildPart2() {
        product.setPart2("Part 2");
    }

    public Product getResult() {
        return product;
    }
}

public class Director {
    private Builder builder;

    public Director(Builder builder) {
        this.builder = builder;
    }

    public Product construct() {
        builder.buildPart1();
        builder.buildPart2();
        return builder.getResult();
    }
}
```

These are just a few examples of the many design patterns available in Java. Design patterns play a crucial role in software development, assisting programmers in developing robust, flexible, and maintainable solutions. Learning and applying these patterns can greatly enhance your skills as a Java developer.
