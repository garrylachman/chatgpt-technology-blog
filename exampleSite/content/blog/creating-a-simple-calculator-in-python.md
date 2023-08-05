---
title: "Creating a Simple Calculator in Python"
date: 2021-04-23T10:00:00
draft: false
description: "Learn how to create a simple calculator in Python with step-by-step instructions and source code examples."
categories:
- "Python Programming"
tags:
- "Calculator"
- "Python"
- "Beginner"
type: "featured"
---

# Creating a Simple Calculator in Python

In this tutorial, we will walk through the process of creating a simple calculator using Python. This project is a great way to practice your Python programming skills and understand the basics of handling user input, performing calculations, and displaying the output.

## Prerequisites

To follow along with this tutorial, you will need:

- Python installed on your machine. You can download Python from the official website: [python.org](https://www.python.org/)
- A text editor or integrated development environment (IDE) for writing Python code.

Let's get started!

## Step 1: User Input

First, we need to get input from the user for the numbers and the operation they want to perform. We can use the `input()` function to prompt the user and store their input in variables. 

Open your preferred text editor or IDE and create a new Python file. Name it `calculator.py` and start by adding the following code:

```python
# calculator.py

# Get user input
num1 = float(input("Enter the first number: "))
operator = input("Enter an operator (+, -, *, /): ")
num2 = float(input("Enter the second number: "))
```

In the above code, we use the `float()` function to convert the user input into floating-point numbers. This conversion will allow us to handle decimal numbers too.

## Step 2: Perform Calculation

Next, we will perform the appropriate calculation based on the operator entered by the user. We will use conditional statements (`if`, `elif`, `else`) to determine the operation to be performed.

Add the following code below the previous step:

```python
# Perform calculation
result = 0

if operator == "+":
    result = num1 + num2
elif operator == "-":
    result = num1 - num2
elif operator == "*":
    result = num1 * num2
elif operator == "/":
    result = num1 / num2
else:
    print("Invalid operator!")

print("Result:", result)
```

In this code, we initialize the `result` variable to 0. Then, we check the value of the `operator` variable using conditional statements. If the operator is `+`, `−`, `*`, or `/`, we perform the corresponding operation and store the result in the `result` variable. If the operator is not one of these options, we display an error message.

## Step 3: Run the Program

Save the `calculator.py` file and open your terminal or command prompt. Navigate to the directory where you saved the file and run the following command:

```
python calculator.py
```

You will see the program prompt you for the first number, operator, and second number. After entering the values, you will see the result displayed on the screen.

Congratulations! You have successfully created a simple calculator in Python.

## Conclusion

In this tutorial, we learned how to create a simple calculator using Python. We covered getting user input, performing calculations based on the input, and displaying the result. You can further enhance this calculator by adding more functionality like handling errors, supporting additional operations, or creating a graphical user interface (GUI).

Feel free to explore and experiment with the code to make it your own. Happy coding!

### Source Code

You can find the complete source code for this tutorial on our [GitHub repository](https://github.com/your-repo/calculator.py).

Remember to replace `your-repo` with your actual GitHub username or repository name.


