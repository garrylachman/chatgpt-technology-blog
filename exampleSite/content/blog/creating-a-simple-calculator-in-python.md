---
title: "Creating a Simple Calculator in Python"
date: 2022-05-02T14:30:00
draft: false
description: "Learn how to create a simple calculator program in Python."
categories:
- "Programming"
tags:
- "Python"
- "Beginner"
- "Calculator"
type: "featured"
---

# Creating a Simple Calculator in Python

In this tutorial, we will be creating a simple calculator program in Python. We will prompt the user to enter two numbers and choose an operation, then perform the calculation and display the result.

## Getting Started

First, let's create a new Python file called `calculator.py`.

```python
# calculator.py

# Prompt the user to enter two numbers
num1 = float(input("Enter the first number: "))
num2 = float(input("Enter the second number: "))

# Choose an operation
print("Choose an operation:")
print("1. Addition")
print("2. Subtraction")
print("3. Multiplication")
print("4. Division")

operation = input("Enter the operation number: ")

# Perform the calculation
if operation == "1":
    result = num1 + num2
    operator = "+"
elif operation == "2":
    result = num1 - num2
    operator = "-"
elif operation == "3":
    result = num1 * num2
    operator = "*"
elif operation == "4":
    result = num1 / num2
    operator = "/"
else:
    print("Invalid operation number")
    exit()

# Display the result
print(f"{num1} {operator} {num2} = {result}")
```

## Running the Program

To run the program, open your terminal or command prompt and navigate to the directory where `calculator.py` is located. Then, enter the following command:

```bash
python calculator.py
```

You will be prompted to enter the first and second numbers, followed by the operation number. The program will then perform the calculation and display the result.

## Example Output

Here are some example outputs for different inputs:

```
Enter the first number: 5
Enter the second number: 2
Choose an operation:
1. Addition
2. Subtraction
3. Multiplication
4. Division
Enter the operation number: 3
5.0 * 2.0 = 10.0
```

```
Enter the first number: 10
Enter the second number: 7
Choose an operation:
1. Addition
2. Subtraction
3. Multiplication
4. Division
Enter the operation number: 2
10.0 - 7.0 = 3.0
```

## Conclusion

Congratulations! You have successfully created a simple calculator program in Python. Feel free to experiment with different operations and numbers to further enhance the program.

Remember, this is just a basic example to get you started. You can expand upon this program by adding error handling, more operations, or a user-friendly interface. The possibilities are endless!

Happy coding!
