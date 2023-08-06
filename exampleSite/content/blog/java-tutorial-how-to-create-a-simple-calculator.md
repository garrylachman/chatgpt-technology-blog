--- 
title: "Java Tutorial: How to Create a Simple Calculator"
date: 2022-01-07T12:00:00
draft: false
description: "Learn how to create a simple calculator using Java programming language."
categories:
- "Java Programming"
tags:
- "Java"
- "Calculator"
- "Source Code"
type: "featured"
--- 

# Java Tutorial: How to Create a Simple Calculator

In this tutorial, we will learn how to create a simple calculator using Java programming language. We'll build a console-based application that can perform basic mathematical operations such as addition, subtraction, multiplication, and division.

## Prerequisites

Before we begin, make sure you have Java Development Kit (JDK) installed on your machine. You can download the JDK from the official Oracle website.

## Step 1: Create a new Java class

First, let's create a new Java class for our calculator program. Open your favorite text editor or IDE and create a new file called `Calculator.java`.

```java
public class Calculator {
    public static void main(String[] args) {
        // Your code goes here
    }
}
```

## Step 2: Define variables

Next, let's define the variables we will use in our calculator program. We'll need two variables to store the numbers for the operation and another variable to store the result.

```java
public class Calculator {
    public static void main(String[] args) {
        double num1, num2, result;
        // Your code goes here
    }
}
```

## Step 3: Get user input

To get the input from the user, we'll use the `Scanner` class. This class allows us to read input from the user's console.

```java
import java.util.Scanner;

public class Calculator {
    public static void main(String[] args) {
        double num1, num2, result;
        
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter the first number: ");
        num1 = scanner.nextDouble();

        System.out.print("Enter the second number: ");
        num2 = scanner.nextDouble();

        // Your code goes here
    }
}
```

## Step 4: Perform calculations

Now that we have the user input, let's perform the calculations based on the selected operation. We'll use a `switch` statement to determine which operation to perform.

```java
import java.util.Scanner;

public class Calculator {
    public static void main(String[] args) {
        double num1, num2, result;

        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter the first number: ");
        num1 = scanner.nextDouble();

        System.out.print("Enter the second number: ");
        num2 = scanner.nextDouble();

        System.out.print("Enter the operation (+, -, *, /): ");
        char operation = scanner.next().charAt(0);

        switch (operation) {
            case '+':
                result = num1 + num2;
                System.out.println("Result: " + result);
                break;
            case '-':
                result = num1 - num2;
                System.out.println("Result: " + result);
                break;
            case '*':
                result = num1 * num2;
                System.out.println("Result: " + result);
                break;
            case '/':
                if (num2 != 0) {
                    result = num1 / num2;
                    System.out.println("Result: " + result);
                } else {
                    System.out.println("Cannot divide by zero.");
                }
                break;
            default:
                System.out.println("Invalid operation.");
        }
    }
}
```

## Step 5: Test the program

Now that we have completed the code for our simple calculator program, let's test it by compiling and running it.

Save the `Calculator.java` file, open a terminal or command prompt, navigate to the directory where you saved the file, and run the following commands:

```bash
javac Calculator.java
java Calculator
```

You should see the program prompt you to enter the numbers and the operation. Once you provide the input, the program will display the result.

## Conclusion

Congratulations! You have successfully created a simple calculator using Java programming language. You can further enhance this program by adding more features or refining the user interface.

Feel free to explore and modify the code to suit your needs. Programming is all about experimenting and learning from your mistakes.

Happy coding!

[calculator]: /images/calculator_example.png
