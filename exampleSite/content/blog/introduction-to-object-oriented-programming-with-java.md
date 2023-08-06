--- 
title: "Introduction to Object-Oriented Programming with Java" 
date: "2022-11-02T10:00:00" 
draft: false 
description: "Learn the fundamentals of object-oriented programming with Java, including classes, objects, and inheritance." 
categories: 
- "Programming" 
tags: 
- "Java" 
- "Object-Oriented Programming" 
type: "tutorial" 
--- 

## Introduction

Java is a popular programming language used for building a variety of applications, from mobile apps to enterprise systems. One of the key features of Java is its support for object-oriented programming (OOP). In this tutorial, we will cover the basics of OOP in Java, including classes, objects, and inheritance.

## Classes and Objects

In Java, a class is a blueprint for creating objects. It defines the properties and behaviors that objects of that class will have. Here's an example of a simple class in Java:

```java
public class Car {
    // Properties
    String color;
    int year;
    double price;

    // Constructor
    public Car(String color, int year, double price) {
        this.color = color;
        this.year = year;
        this.price = price;
    }

    // Method
    public void startEngine() {
        System.out.println("Engine started!");
    }
}
```

In the above example, we have defined a class called `Car` with three properties (color, year, price) and a method (startEngine). We have also created a constructor to initialize the properties when creating an object of the `Car` class.

To create an object of the `Car` class, we can use the following code:

```java
Car myCar = new Car("red", 2022, 30000.0);
```

Here, `myCar` is an instance of the `Car` class. We can access the properties and methods of the `Car` class using the dot operator. For example, to access the `color` property, we can use `myCar.color`.

## Inheritance

Inheritance is a powerful feature of OOP that allows us to create new classes based on existing classes. It promotes code reuse and helps in creating a hierarchical structure of classes.

Here's an example that demonstrates inheritance:

```java
public class ElectricCar extends Car {
    // Additional properties
    int batteryCapacity;

    // Constructor
    public ElectricCar(String color, int year, double price, int batteryCapacity) {
        super(color, year, price); // Call the superclass constructor
        this.batteryCapacity = batteryCapacity;
    }

    // Method
    public void chargeBattery() {
        System.out.println("Battery charged!");
    }
}
```

In the above example, we have created a class called `ElectricCar` that extends the `Car` class. This means that the `ElectricCar` class inherits all the properties and methods from the `Car` class. We have also added an additional property (`batteryCapacity`) and a method (`chargeBattery`) to the `ElectricCar` class.

To create an object of the `ElectricCar` class, we can use the following code:

```java
ElectricCar myElectricCar = new ElectricCar("blue", 2022, 40000.0, 500);
```

Here, `myElectricCar` is an instance of the `ElectricCar` class. It can access the properties and methods of both the `ElectricCar` class and the `Car` class.

## Conclusion

In this tutorial, we have covered the basics of object-oriented programming with Java. We learned about classes, objects, and inheritance. Object-oriented programming is a fundamental concept in Java and understanding it will help you write more organized and maintainable code.

Feel free to explore more about Java's OOP features, such as encapsulation, polymorphism, and abstraction. Happy coding!

**Output:**

```
Engine started!
Battery charged!
```

That's it for now, stay tuned for more programming tutorials.
