--- 
title: "Exploring Design Patterns in Java"
date: 2022-05-12T15:30:00
draft: false
description: "Learn about popular design patterns and their implementation in Java."
categories: 
  - "Programming"
tags: 
  - "Java"
  - "Design Patterns"
type: "featured"
---

# Exploring Design Patterns in Java

Design patterns are reusable solutions to common problems that occur in software development. They provide proven concepts and strategies to solve these problems effectively. In this blog post, we will explore some of the most popular design patterns and demonstrate their implementation in Java.

## Creational Patterns

### Factory Method

The Factory Method pattern is used to create objects without specifying their exact class. Instead, a factory class handles object creation based on a specified interface or abstract class. Let's consider an example of a pizza store:

```java
interface Pizza {
    void prepare();
    void bake();
    void cut();
    void box();
}

class MargheritaPizza implements Pizza {
    // Implementation for Margherita Pizza
}

class PepperoniPizza implements Pizza {
    // Implementation for Pepperoni Pizza
}

class PizzaStore {
    public Pizza orderPizza(String type) {
        Pizza pizza;

        if (type.equals("Margherita")) {
            pizza = new MargheritaPizza();
        } else if (type.equals("Pepperoni")) {
            pizza = new PepperoniPizza();
        } else {
            throw new IllegalArgumentException("Invalid pizza type.");
        }

        pizza.prepare();
        pizza.bake();
        pizza.cut();
        pizza.box();

        return pizza;
    }
}
```

In the example above, the `PizzaStore` acts as a factory that creates different types of pizzas based on user preference.

### Singleton

The Singleton pattern ensures that only one instance of a class can be created and provides a global point of access to it. Here's a simple implementation:

```java
class Singleton {
    private static Singleton instance;

    private Singleton() {
        // Private constructor prevents direct instantiation
    }

    public static Singleton getInstance() {
        if (instance == null) {
            instance = new Singleton();
        }
        return instance;
    }
}
```

## Structural Patterns

### Adapter

The Adapter pattern allows objects with incompatible interfaces to work together by wrapping them with a common interface. Consider an example of audio players:

```java
interface MediaPlayer {
    void play(String audioType, String fileName);
}

interface AdvancedMediaPlayer {
    void playVlc(String fileName);
    void playMp4(String fileName);
}

class VlcPlayer implements AdvancedMediaPlayer {
    public void playVlc(String fileName) {
        // VLC specific implementation
    }

    public void playMp4(String fileName) {
        // Empty implementation
    }
}

class Mp4Player implements AdvancedMediaPlayer {
    public void playVlc(String fileName) {
        // Empty implementation
    }

    public void playMp4(String fileName) {
        // MP4 specific implementation
    }
}

class MediaAdapter implements MediaPlayer {
    private AdvancedMediaPlayer advancedMediaPlayer;

    public MediaAdapter(String audioType) {
        if (audioType.equals("vlc")) {
            advancedMediaPlayer = new VlcPlayer();
        } else if (audioType.equals("mp4")) {
            advancedMediaPlayer = new Mp4Player();
        }
    }

    public void play(String audioType, String fileName) {
        if (audioType.equals("vlc")) {
            advancedMediaPlayer.playVlc(fileName);
        } else if (audioType.equals("mp4")) {
            advancedMediaPlayer.playMp4(fileName);
        }
    }
}

class AudioPlayer implements MediaPlayer {
    MediaAdapter mediaAdapter;

    public void play(String audioType, String fileName) {
        // Inbuilt support for mp3 files
        if (audioType.equals("mp3")) {
            System.out.println("Playing mp3 file: " + fileName);
        }
        // Use the MediaAdapter for other audio formats
        else if (audioType.equals("vlc") || audioType.equals("mp4")) {
            mediaAdapter = new MediaAdapter(audioType);
            mediaAdapter.play(audioType, fileName);
        } else {
            System.out.println("Invalid media type: " + audioType);
        }
    }
}
```

In the example above, the `MediaPlayer` interface provides a common interface for audio players (`AudioPlayer`) and the compatibility adapter (`MediaAdapter`) allows different audio formats to be played by the `AudioPlayer`.

## Behavioral Patterns

### Observer

The Observer pattern defines a one-to-many dependency between objects, where changes in one object trigger updates in other dependent objects. Consider an example of a weather station:

```java
import java.util.ArrayList;
import java.util.List;

interface Observer {
    void update(double temperature);
}

interface Subject {
    void registerObserver(Observer observer);
    void removeObserver(Observer observer);
    void notifyObservers();
}

class WeatherStation implements Subject {
    private List<Observer> observers = new ArrayList<>();
    private double temperature;

    public void setTemperature(double temperature) {
        this.temperature = temperature;
        notifyObservers();  // Notify all observers when temperature changes
    }

    public void registerObserver(Observer observer) {
        observers.add(observer);
    }

    public void removeObserver(Observer observer) {
        observers.remove(observer);
    }

    public void notifyObservers() {
        for (Observer observer : observers) {
            observer.update(temperature);
        }
    }
}

class User implements Observer {
    private double temperature;

    public void update(double temperature) {
        this.temperature = temperature;
        displayTemperature();
    }

    public void displayTemperature() {
        System.out.println("Current temperature: " + temperature);
    }
}
```

In the example above, the `WeatherStation` acts as the subject and maintains a list of observers. When the temperature changes, it notifies all the observers, triggering their update.

## Conclusion

Design patterns provide a systematic approach to solving common software development problems. In this blog post, we explored some popular design patterns and their implementation in Java. These patterns can greatly improve the flexibility, maintainability, and reusability of your code. Understanding and applying design patterns will enhance your skillset as a Java developer and help you build robust software solutions.

Remember, design patterns are not silver bullets but tools that should be used judiciously based on the specific requirements of your project. Happy coding!

*References:*
- Design Patterns: Elements of Reusable Object-Oriented Software by Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides
