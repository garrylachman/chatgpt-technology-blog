--- 
title: "Unique Tutorial: Implementing the Observer Design Pattern in Java"
date: 2022-11-01T09:00:00
draft: false
description: "Learn how to implement the Observer Design Pattern in Java with source code examples."
categories: 
- "Programming"
tags: 
- "Java"
- "Design Patterns"
- "Observer"
type: "featured"
--- 

# Implementing the Observer Design Pattern in Java

The Observer Design Pattern is a behavioral design pattern that allows one-to-many dependency relationship between objects. It is widely used in software development to facilitate communication between different components of an application.

In this tutorial, we will learn how to implement the Observer Design Pattern in Java. We will create a simple example where we have a subject (publisher) and multiple observers (subscribers), and the observers will be notified whenever there is a change in the subject.

## Step 1: Create the Subject Interface

First, let's create an interface called `Subject` that defines the methods for registering, unregistering, and notifying observers.

```java
public interface Subject {
    void addObserver(Observer observer);
    void removeObserver(Observer observer);
    void notifyObservers();
}
```

## Step 2: Create the Observer Interface

Next, let's create an interface called `Observer` that defines the method that will be called by the subject when a change occurs.

```java
public interface Observer {
    void update();
}
```

## Step 3: Implement the Subject

Now, let's implement the `Subject` interface in a class called `NewsPublisher`. This class will maintain a list of observers and notify them whenever there is a change in the news.

```java
import java.util.ArrayList;
import java.util.List;

public class NewsPublisher implements Subject {
    private List<Observer> observers = new ArrayList<>();
    private String news;

    @Override
    public void addObserver(Observer observer) {
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

    public void setNews(String news) {
        this.news = news;
        notifyObservers();
    }

    public String getNews() {
        return news;
    }
}
```

## Step 4: Implement the Observers

Next, let's create a couple of observer classes that implement the `Observer` interface. These classes will define the behavior that needs to be executed when a change occurs in the subject.

```java
public class NewsSubscriberA implements Observer {
    private NewsPublisher publisher;

    public NewsSubscriberA(NewsPublisher publisher) {
        this.publisher = publisher;
        this.publisher.addObserver(this);
    }

    @Override
    public void update() {
        System.out.println("News Subscriber A received an update: " + publisher.getNews());
    }
}

public class NewsSubscriberB implements Observer {
    private NewsPublisher publisher;

    public NewsSubscriberB(NewsPublisher publisher) {
        this.publisher = publisher;
        this.publisher.addObserver(this);
    }

    @Override
    public void update() {
        System.out.println("News Subscriber B received an update: " + publisher.getNews());
    }
}
```

## Step 5: Test the Implementation

Finally, let's test our implementation by creating an instance of the `NewsPublisher` class and a couple of observer instances. We will update the news in the publisher and observe how the observers are notified.

```java
public class Main {
    public static void main(String[] args) {
        NewsPublisher publisher = new NewsPublisher();
        NewsSubscriberA subscriberA = new NewsSubscriberA(publisher);
        NewsSubscriberB subscriberB = new NewsSubscriberB(publisher);

        publisher.setNews("New headline: Java 17 Released!");
    }
}
```

The output of this program will be:

```
News Subscriber A received an update: New headline: Java 17 Released!
News Subscriber B received an update: New headline: Java 17 Released!
```

Congratulations! You have successfully implemented the Observer Design Pattern in Java. This pattern is helpful for decoupling components and simplifying communication in your applications.

Feel free to modify and experiment with the code provided to gain a deeper understanding of the Observer Design Pattern.

Remember, design patterns are powerful tools that can greatly improve your software development skills, so it's important to practice and apply them in your projects.

Happy coding!
