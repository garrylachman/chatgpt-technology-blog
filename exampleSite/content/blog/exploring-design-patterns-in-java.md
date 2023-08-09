---
title: "Exploring Design Patterns in Java"
date: 2021-09-23T10:00:00
draft: false
description: "Learn about common design patterns in Java and how they can improve your software development"
categories:
- "Programming"
tags:
- "Java"
- "Design Patterns"
type: "featured"
---

# Exploring Design Patterns in Java

Design patterns are reusable solutions to common programming problems. They encapsulate best practices and provide a structured approach to building software applications. In this article, we will explore some popular design patterns in Java and discuss their implementation and benefits.

## Singleton Pattern

The Singleton pattern restricts the instantiation of a class to a single object. This pattern ensures that only one instance of the class exists throughout the application.

```java
public class Singleton {
   private static Singleton instance;
  
   private Singleton() {}
  
   public static synchronized Singleton getInstance() {
      if(instance == null) {
         instance = new Singleton();
      }
      return instance;
   }
}
```

The `Singleton` class has a private constructor to prevent direct instantiation. The `getInstance()` method returns the only instance of the class.

## Strategy Pattern

The Strategy pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. It allows the algorithms to vary independently from clients that use them.

```java
public interface Strategy {
   int doOperation(int num1, int num2);
}

public class AddOperation implements Strategy {
   @Override
   public int doOperation(int num1, int num2) {
      return num1 + num2;
   }
}

public class SubtractOperation implements Strategy {
   @Override
   public int doOperation(int num1, int num2) {
      return num1 - num2;
   }
}

public class Context {
   private Strategy strategy;
   
   public Context(Strategy strategy){
      this.strategy = strategy;
   }

   public int executeStrategy(int num1, int num2){
      return strategy.doOperation(num1, num2);
   }
}
```

The `Strategy` interface defines the contract for different strategies. The `AddOperation` and `SubtractOperation` classes implement the strategies. The `Context` class uses the selected strategy to perform an operation.

## Observer Pattern

The Observer pattern establishes a one-to-many relationship between objects, where the state of one object changes, all its dependents are notified and updated automatically.

```java
public interface Observer {
   void update();
}

public interface Subject {
   void attach(Observer observer);
   void detach(Observer observer);
   void notifyObservers();
}

public class ConcreteSubject implements Subject {
   private List<Observer> observers = new ArrayList<>();

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

public class ConcreteObserver implements Observer {
   @Override
   public void update() {
      System.out.println("Observer updated!");
   }
}
```

The `Subject` interface defines methods for attaching, detaching, and notifying observers. The `ConcreteSubject` maintains a list of observers and performs the notification. The `ConcreteObserver` implements the `Observer` interface and defines the action to be taken when notified.

## Conclusion

Design patterns provide elegant solutions to common software development challenges. By understanding and incorporating design patterns into your Java projects, you can improve code reusability and maintainability. The Singleton, Strategy, and Observer patterns are just a few examples of the many design patterns available. Experiment with different patterns and see how they can enhance your software development process.

Remember, design patterns are tools, and it's important to choose the right one that fits your specific use case. With practice and experience, you will become proficient in utilizing these patterns effectively in your Java projects.

I hope this article has provided you with valuable insights into design patterns in Java. Happy coding!

Sources:
- [Singleton Pattern - SourceMaking](https://sourcemaking.com/design_patterns/singleton)
- [Strategy Pattern - SourceMaking](https://sourcemaking.com/design_patterns/strategy)
- [Observer Pattern - SourceMaking](https://sourcemaking.com/design_patterns/observer)

