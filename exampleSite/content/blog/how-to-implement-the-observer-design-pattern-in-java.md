---
title: "How to Implement the Observer Design Pattern in Java"
date: 2023-08-15T12:00:00
draft: false
description: "Learn how to effectively use the Observer design pattern in Java to achieve loose coupling between objects."
categories:
- "Java"
tags:
- "Design Patterns"
- "Observer Pattern"
type: "featured"
---

## Introduction

In software development, design patterns offer reusable solutions to common problems. One such pattern is the Observer design pattern, also known as the Publish-Subscribe pattern. This pattern allows an object, called the subject, to maintain a list of its dependents, known as observers, and notifies them of any internal changes. In this tutorial, we'll discuss how to implement the Observer pattern in Java using a real-world example.

## Prerequisites

To follow along with this tutorial, you'll need to have a basic understanding of Java programming and object-oriented principles.

## Setting Up the Project

Before we dive into the implementation, let's set up a new Java project. Open your preferred Java IDE and create a new project with the name "ObserverPatternExample". Once the project is created, create a new Java class called "Subject" and another class called "Observer".

## Implementing the Subject Class

The Subject class will act as the subject in the Observer pattern. It will maintain the list of observers and provide methods to register and notify them. Here's the initial implementation of the Subject class:

```java
import java.util.ArrayList;
import java.util.List;

public class Subject {
    private List<Observer> observers = new ArrayList<>();
    private int state;

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
        notifyObservers();
    }

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
```

In the above code, we define a private list of observers and a state variable. The `getState()` and `setState()` methods enable reading and updating the state. When the `setState()` method is called, it updates the state and triggers the `notifyObservers()` method.

## Implementing the Observer Class

The Observer class represents an observer in the Observer pattern. It will define an `update()` method that will be called by the subject whenever a change occurs. Here's the initial implementation of the Observer class:

```java
public interface Observer {
    void update();
}
```

We create an interface called Observer with a single method `update()`. This method will be implemented by any class that wants to observe changes in the subject.

## Implementing the Concrete Observers

Now that we have defined the interfaces, let's create two concrete observer classes, `BinaryObserver` and `HexadecimalObserver`, which will observe changes in the subject and print the updated state in binary and hexadecimal format, respectively. Here's the initial implementation of these classes:

```java
public class BinaryObserver implements Observer {
    private Subject subject;

    public BinaryObserver(Subject subject) {
        this.subject = subject;
        this.subject.attach(this);
    }

    @Override
    public void update() {
        System.out.println("Binary String: " + Integer.toBinaryString(subject.getState()));
    }
}

public class HexadecimalObserver implements Observer {
    private Subject subject;

    public HexadecimalObserver(Subject subject) {
        this.subject = subject;
        this.subject.attach(this);
    }

    @Override
    public void update() {
        System.out.println("Hexadecimal String: " + Integer.toHexString(subject.getState()).toUpperCase());
    }
}
```

In the above code, each observer class implements the Observer interface and registers itself with the subject in their constructors. The `update()` method prints the state of the subject in binary and hexadecimal formats, respectively.

## Testing the Implementation

To test our implementation, let's create a `Main` class with a `main` method. In the `main` method, we'll create an instance of the `Subject` class, along with instances of the `BinaryObserver` and `HexadecimalObserver` classes. We'll then update the state of the subject and observe the output. Here's the implementation:

```java
public class Main {
    public static void main(String[] args) {
        Subject subject = new Subject();
        new BinaryObserver(subject);
        new HexadecimalObserver(subject);

        System.out.println("Setting state to 15");
        subject.setState(15);

        System.out.println("Setting state to 10");
        subject.setState(10);
    }
}
```

Upon running the `Main` class, you should see the following output:

```
Setting state to 15
Binary String: 1111
Hexadecimal String: F
Setting state to 10
Binary String: 1010
Hexadecimal String: A
```

As you can see, the observers correctly receive and display the updated state in their respective formats.

## Conclusion

In this tutorial, you've learned how to implement the Observer design pattern in Java. The Observer pattern is a powerful tool for decoupling objects and achieving loose coupling, thus enhancing the maintainability and extensibility of your software. Try experimenting with more observers and subjects to deepen your understanding of this pattern. Happy coding!

