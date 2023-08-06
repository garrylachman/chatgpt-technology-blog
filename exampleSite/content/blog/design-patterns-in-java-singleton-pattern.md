--- 
title: "Design Patterns in Java: Singleton Pattern"
date: 2022-10-20T12:00:00
draft: false
description: "Learn about the Singleton design pattern in Java and see how it can be implemented with source code examples."
categories:
  - "Programming"
tags:
  - "Java"
  - "Design Patterns"
type: "featured"
--- 

# Design Patterns in Java: Singleton Pattern

Design patterns are reusable solutions to common programming problems. They provide a structured approach to designing software and can enhance code maintainability and readability. In this article, we'll explore the Singleton design pattern in Java and demonstrate how it can be implemented with source code examples.

## Introduction to Singleton Pattern

The Singleton pattern is a creational design pattern that restricts the instantiation of a class to a single object. This pattern ensures that there is only one instance of a class throughout the entire application and provides a global point of access to that instance.

The Singleton pattern is useful in scenarios where a single instance of a class is required to coordinate actions across the system. For example, a logger class or a database connection manager can be implemented using the Singleton pattern.

## Implementation of Singleton Pattern in Java

Let's see how we can implement the Singleton pattern in Java using a simple example. We'll create a `Logger` class that follows the Singleton pattern.

```java
public class Logger {
    private static Logger instance;

    private Logger() {
        // Private constructor to prevent instantiation from outside the class
    }

    public static synchronized Logger getInstance() {
        if (instance == null) {
            instance = new Logger();
        }
        return instance;
    }

    public void log(String message) {
        System.out.println("[LOG] " + message);
    }
}
```

In the above code, the `Logger` class has a private static instance variable and a private constructor. The `getInstance()` method is responsible for creating and returning the singleton instance. It checks if the instance is `null` and creates a new instance if needed.

Let's use the `Logger` class in our program to see how it works:

```java
public class Main {
    public static void main(String[] args) {
        Logger logger1 = Logger.getInstance();
        Logger logger2 = Logger.getInstance();

        logger1.log("Logging message 1");
        logger2.log("Logging message 2");

        System.out.println(logger1 == logger2); // Output: true
    }
}
```

In the `Main` class, we obtain two instances of the `Logger` class using the `getInstance()` method. We then call the `log()` method on both instances and observe that they produce the same output.

The output of the above code will be:

```
[LOG] Logging message 1
[LOG] Logging message 2
true
```

As expected, both `logger1` and `logger2` refer to the same instance of the `Logger` class, proving that the Singleton pattern ensures a single instance throughout the application.

## Conclusion

The Singleton pattern is a powerful tool in software development for ensuring that there is only one instance of a class. In this article, we explored the Singleton pattern in Java and saw how it can be implemented with source code examples.

Remember to use the Singleton pattern judiciously and consider thread-safety if your application is multi-threaded. However, with careful implementation, the Singleton pattern can greatly enhance design and code reusability in your Java projects.

Do you have any other favorite design patterns you'd like us to cover? Let us know in the comments below!


