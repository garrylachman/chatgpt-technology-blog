---
title: "Understanding Design Patterns in Java"
date: 2022-09-28T10:00:00
draft: false
description: "Learn about design patterns and how they can be used in Java programming."
categories:
- "Java"
tags:
- "Design Patterns"
- "Object-Oriented Programming"
- "Software Development"
type: "featured"
---

# Understanding Design Patterns in Java

Design patterns are widely recognized solutions to common problems in software design. They provide reusable solutions that improve the overall structure and efficiency of software systems. In this tutorial, we will explore some popular design patterns and how they can be implemented using Java programming language.

## Table of Contents
- Introduction to Design Patterns
- Creational Design Patterns
  - Factory Method Pattern
  - Singleton Pattern
  - Builder Pattern
- Structural Design Patterns
  - Adapter Pattern
  - Composite Pattern
  - Proxy Pattern
- Behavioral Design Patterns
  - Observer Pattern
  - Strategy Pattern
  - Command Pattern

## Introduction to Design Patterns

Design patterns can be classified into three main categories: Creational, Structural, and Behavioral. Creational design patterns focus on object creation and provide mechanisms for creating objects in a flexible manner. Structural design patterns deal with object composition to form larger structures while keeping them flexible. Behavioral design patterns focus on communication between objects and the assignment of responsibilities.

## Creational Design Patterns

### Factory Method Pattern

The Factory Method pattern provides an interface for creating objects but allows subclasses to decide which class to instantiate. This pattern promotes loose coupling between the creator and the product.

```java
public abstract class Vehicle {
    public abstract void start();
}

public class Car extends Vehicle {
    public void start() {
        System.out.println("Car started!");
    }
}

public class Bike extends Vehicle {
    public void start() {
        System.out.println("Bike started!");
    }
}

public abstract class VehicleFactory {
    public abstract Vehicle createVehicle();
}

public class CarFactory extends VehicleFactory {
    public Vehicle createVehicle() {
        return new Car();
    }
}

public class BikeFactory extends VehicleFactory {
    public Vehicle createVehicle() {
        return new Bike();
    }
}

public class Main {
    public static void main(String[] args) {
        VehicleFactory factory = new CarFactory();
        Vehicle car = factory.createVehicle();
        car.start();
    }
}
```

Output:
```
Car started!
```

### Singleton Pattern

The Singleton pattern ensures that a class has only one instance and provides a global point of access to it.

```java
public class Singleton {
    private static Singleton instance;
    
    private Singleton() {
    }
    
    public static Singleton getInstance() {
        if (instance == null) {
            instance = new Singleton();
        }
        return instance;
    }
    
    public void showMessage() {
        System.out.println("Hello, Singleton!");
    }
}

public class Main {
    public static void main(String[] args) {
        Singleton singleton = Singleton.getInstance();
        singleton.showMessage();
    }
}
```

Output:
```
Hello, Singleton!
```

### Builder Pattern

The Builder pattern separates the construction of an object from its representation. It allows for step-by-step creation of complex objects, providing fine-grained control over the construction process.

```java
public class Car {
    private String brand;
    private int year;
    private float price;
    
    private Car(Builder builder) {
        this.brand = builder.brand;
        this.year = builder.year;
        this.price = builder.price;
    }
    
    public static class Builder {
        private String brand;
        private int year;
        private float price;
        
        public Builder setBrand(String brand) {
            this.brand = brand;
            return this;
        }
        
        public Builder setYear(int year) {
            this.year = year;
            return this;
        }
        
        public Builder setPrice(float price) {
            this.price = price;
            return this;
        }
        
        public Car build() {
            return new Car(this);
        }
    }
    
    public static void main(String[] args) {
        Car car = new Car.Builder()
                .setBrand("Toyota")
                .setYear(2022)
                .setPrice(25000.0f)
                .build();
    }
}
```

## Structural Design Patterns

### Adapter Pattern

The Adapter pattern converts the interface of a class into another interface that clients expect.

```java
public interface MediaPlayer {
    void play(String audioType, String filename);
}

public interface AdvancedMediaPlayer {
    void playVlc(String filename);
    void playMp4(String filename);
}

public class VlcPlayer implements AdvancedMediaPlayer {
    public void playVlc(String filename) {
        System.out.println("Playing VLC file: " + filename);
    }
    
    public void playMp4(String filename) {
        // Do nothing
    }
}

public class Mp4Player implements AdvancedMediaPlayer {
    public void playVlc(String filename) {
        // Do nothing
    }
    
    public void playMp4(String filename) {
        System.out.println("Playing MP4 file: " + filename);
    }
}

public class MediaAdapter implements MediaPlayer {
    AdvancedMediaPlayer advancedMediaPlayer;
    
    public MediaAdapter(String audioType) {
        if (audioType.equalsIgnoreCase("vlc")) {
            advancedMediaPlayer = new VlcPlayer();
        }
        else if (audioType.equalsIgnoreCase("mp4")) {
            advancedMediaPlayer = new Mp4Player();
        }
    }
    
    public void play(String audioType, String filename) {
        if (audioType.equalsIgnoreCase("vlc")) {
            advancedMediaPlayer.playVlc(filename);
        }
        else if (audioType.equalsIgnoreCase("mp4")) {
            advancedMediaPlayer.playMp4(filename);
        }
    }
}

public class AudioPlayer implements MediaPlayer {
    MediaAdapter mediaAdapter;
    
    public void play(String audioType, String filename) {
        if (audioType.equalsIgnoreCase("mp3")) {
            System.out.println("Playing MP3 file: " + filename);
        }
        else if (audioType.equalsIgnoreCase("vlc") || audioType.equalsIgnoreCase("mp4")) {
            mediaAdapter = new MediaAdapter(audioType);
            mediaAdapter.play(audioType, filename);
        }
        else {
            System.out.println("Invalid media type.");
        }
    }
}

public class Main {
    public static void main(String[] args) {
        MediaPlayer audioPlayer = new AudioPlayer();
        audioPlayer.play("mp3", "song.mp3");
        audioPlayer.play("vlc", "song.vlc");
        audioPlayer.play("mp4", "song.mp4");
    }
}
```

Output:
```
Playing MP3 file: song.mp3
Playing VLC file: song.vlc
Playing MP4 file: song.mp4
```

### Composite Pattern

The Composite pattern treats objects and groups of objects uniformly, allowing you to represent both individual objects and compositions of objects as a single hierarchy.

```java
public interface Component {
    void traverse();
}

public class Leaf implements Component {
    private String name;
    
    public Leaf(String name) {
        this.name = name;
    }
    
    public void traverse() {
        System.out.println("Leaf: " + name);
    }
}

public class Composite implements Component {
    private List<Component> components = new ArrayList<>();
    
    public void add(Component component) {
        components.add(component);
    }
    
    public void traverse() {
        for (Component component : components) {
            component.traverse();
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Component root = new Composite();
        Component branch1 = new Composite();
        Component branch2 = new Composite();
        
        Component leaf1 = new Leaf("Leaf 1");
        Component leaf2 = new Leaf("Leaf 2");
        Component leaf3 = new Leaf("Leaf 3");
        Component leaf4 = new Leaf("Leaf 4");
        
        root.add(leaf1);
        root.add(branch1);
        
        branch1.add(leaf2);
        branch1.add(branch2);
        
        branch2.add(leaf3);
        branch2.add(leaf4);
        
        root.traverse();
    }
}
```

Output:
```
Leaf: Leaf 1
Leaf: Leaf 2
Leaf: Leaf 3
Leaf: Leaf 4
```

### Proxy Pattern

The Proxy pattern provides a surrogate or placeholder for another object to control access to it.

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
    
    public void display() {
        System.out.println("Displaying image: " + filename);
    }
    
    private void loadFromDisk() {
        System.out.println("Loading image from disk: " + filename);
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

public class Main {
    public static void main(String[] args) {
        Image image = new ProxyImage("image.jpg");
        image.display();
    }
}
```

Output:
```
Loading image from disk: image.jpg
Displaying image: image.jpg
```

## Behavioral Design Patterns

### Observer Pattern

The Observer pattern defines a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.

```java
import java.util.ArrayList;
import java.util.List;

public interface Observer {
    void update(String message);
}

public interface Subject {
    void attachObserver(Observer observer);
    void detachObserver(Observer observer);
    void notifyObservers(String message);
}

public class User implements Observer {
    private String name;
    
    public User(String name) {
        this.name = name;
    }
    
    public void update(String message) {
        System.out.println(name + " received message: " + message);
    }
}

public class Blog implements Subject {
    private List<Observer> observers = new ArrayList<>();
    
    public void attachObserver(Observer observer) {
        observers.add(observer);
    }
    
    public void detachObserver(Observer observer) {
        observers.remove(observer);
    }
    
    public void notifyObservers(String message) {
        for (Observer observer : observers) {
            observer.update(message);
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Blog blog = new Blog();
        
        User user1 = new User("John");
        User user2 = new User("Jane");
        
        blog.attachObserver(user1);
        blog.attachObserver(user2);
        
        blog.notifyObservers("New blog post published!");
    }
}
```

Output:
```
John received message: New blog post published!
Jane received message: New blog post published!
```

### Strategy Pattern

The Strategy pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. It lets the algorithm vary independently from the clients that use it.

```java
public interface SortAlgorithm {
    void sort(int[] arr);
}

public class BubbleSort implements SortAlgorithm {
    public void sort(int[] arr) {
        int n = arr.length;
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
    }
}

public class QuickSort implements SortAlgorithm {
    public void sort(int[] arr) {
        // Implementation of Quick Sort algorithm
    }
}

public class Sorter {
    private SortAlgorithm sortAlgorithm;
    
    public Sorter(SortAlgorithm sortAlgorithm) {
        this.sortAlgorithm = sortAlgorithm;
    }
    
    public void setSortAlgorithm(SortAlgorithm sortAlgorithm) {
        this.sortAlgorithm = sortAlgorithm;
    }
    
    public void sort(int[] arr) {
        sortAlgorithm.sort(arr);
    }
}

public class Main {
    public static void main(String[] args) {
        int[] arr = {5, 3, 9, 1, 7};
        
        Sorter sorter = new Sorter(new BubbleSort());
        sorter.sort(arr);
        
        // Change the sorting algorithm at runtime
        sorter.setSortAlgorithm(new QuickSort());
        sorter.sort(arr);
        
        for (int num : arr) {
            System.out.print(num + " ");
        }
    }
}
```

Output:
```
1 3 5 7 9
```

### Command Pattern

The Command pattern encapsulates a request as an object, thereby letting you parameterize clients with various requests, queue or log requests, and support undoable operations.

```java
public interface Command {
    void execute();
}

public class Light {
    public void turnOn() {
        System.out.println("Light turned on.");
    }
    
    public void turnOff() {
        System.out.println("Light turned off.");
    }
}

public class TurnOnCommand implements Command {
    private Light light;
    
    public TurnOnCommand(Light light) {
        this.light = light;
    }
    
    public void execute() {
        light.turnOn();
    }
}

public class TurnOffCommand implements Command {
    private Light light;
    
    public TurnOffCommand(Light light) {
        this.light = light;
    }
    
    public void execute() {
        light.turnOff();
    }
}

public class RemoteControl {
    private Command command;
    
    public void setCommand(Command command) {
        this.command = command;
    }
    
    public void pressButton() {
        command.execute();
    }
}

public class Main {
    public static void main(String[] args) {
        Light light = new Light();
        
        RemoteControl remote = new RemoteControl();
        
        Command turnOnCommand = new TurnOnCommand(light);
        remote.setCommand(turnOnCommand);
        remote.pressButton();
        
        Command turnOffCommand = new TurnOffCommand(light);
        remote.setCommand(turnOffCommand);
        remote.pressButton();
    }
}
```

Output:
```
Light turned on.
Light turned off.
```

## Conclusion

In this tutorial, we covered several popular design patterns and provided code examples in Java. Understanding and applying design patterns can greatly improve the structure and maintainability of your software projects. Keep in mind that design patterns are not a one-size-fits-all solution, and careful consideration should be given to their usage in different contexts. Experiment with these patterns and explore their benefits in real-world scenarios. Happy coding!

You can find more information about design patterns in the [Gang of Four (GoF) book](https://www.amazon.com/Design-Patterns-Elements-Reusable-Object-Oriented/dp/0201633612).

*This tutorial is also available on my [personal programming blog](https://www.example.com/understanding-design-patterns-in-java).*
